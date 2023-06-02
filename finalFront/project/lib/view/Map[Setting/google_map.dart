import 'dart:async';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project/providers/search_places.dart';
import '../../data/model/auto_complete.dart';
import '../../services/map_services.dart';

class MyGoogleMap extends ConsumerStatefulWidget {
  const MyGoogleMap({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    throw UnimplementedError();
  }
}

class _MyGoogleMapState extends ConsumerState<MyGoogleMap> {
  Completer<GoogleMapController> _controller = Completer();
  TextEditingController searchController = TextEditingController();
  late PageController _pageController;
  final key = '<AIzaSyDrGn--NujM3CHoOveNb-Xx4JNafXicakQ>';
  List allFavoritePlaces = [];
  bool searchToggle = true;
  bool raduisSlider = false;
  bool pressedNear = false;
  bool cardTapped = false;
  bool getDirections = false;
  var tappedPlaceDetail;
  String placeImg = '';
  Timer? _debounce;
  Set<Marker> _markers = Set<Marker>();
  @override
  void initState() {
    super.initState();
  }

  void fetchImage() async {
    if (_pageController.page !=
        null) if (allFavoritePlaces[_pageController.page!.toInt()]
            ['photos'] !=
        null) {
      setState(() {
        placeImg = allFavoritePlaces[_pageController.page!.toInt()]['photos'][0]
            ['photo_reference'];
      });
    } else {
      placeImg = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
//providers
    final allSearchResults = ref.watch(placeResultsProvider);
    final searchFlag = ref.watch(searchToggleProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: screenHeight,
                width: screenWidth,
                child: GoogleMap(
                  markers: _markers,
                  mapType: MapType.normal,
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(37.42796133580664, -122.085749655962),
                    zoom: 14.4746,
                  ),
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
              ),
              searchToggle
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(15, 40, 15, 5),
                      child: Column(
                        children: [
                          Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                controller: searchController,
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 20.0, vertical: 15.0),
                                    border: InputBorder.none,
                                    hintText: 'Search',
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            searchToggle = false;
                                            searchController.text = '';
                                          });
                                        },
                                        icon: const Icon(Icons.close))),
                                onChanged: (value) {
                                  if (_debounce?.isActive ?? false)
                                    _debounce?.cancel();
                                  _debounce =
                                      Timer(const Duration(milliseconds: 700),
                                          () async {
                                    if (value.length > 2) {
                                      if (!searchFlag.searchToggle) {
                                        searchFlag.toggleSearch();
                                        _markers = {};
                                      }

                                      List<AutoCompleteResult> searchResults =
                                          await MapServices()
                                              .searchPlaces(value);

                                      allSearchResults
                                          .setResults(searchResults);
                                    } else {
                                      List<AutoCompleteResult> emptyList = [];
                                      allSearchResults.setResults(emptyList);
                                    }
                                  });
                                },
                              ))
                        ],
                      ),
                    )
                  : Container(),
              pressedNear
                  ? Positioned(
                      bottom: 20,
                      child: Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: PageView.builder(
                            controller: _pageController,
                            itemCount: allFavoritePlaces.length,
                            itemBuilder: (BuildContext context, int index) {
                              return _nearbyPlacesList(index);
                            }),
                      ))
                  : Container()
            ])
          ],
        ),
      ),
      floatingActionButton: FabCircularMenu(
          alignment: Alignment.bottomLeft,
          fabColor: Colors.white,
          fabOpenColor: Colors.white,
          ringDiameter: 250,
          ringWidth: 60,
          ringColor: Colors.green.shade200,
          fabSize: 60,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    searchToggle = true;
                    raduisSlider = false;
                    pressedNear = false;
                    cardTapped = false;
                    getDirections = false;
                  });
                },
                icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  setState(() {});
                },
                icon: const Icon(Icons.navigation))
          ]),
    );
  }

  _nearbyPlacesList(index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget? widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = (_pageController.page! - index);
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 125.0,
            width: Curves.easeInOut.transform(value) * 350.0,
            child: widget,
          ),
        );
      },
      child: InkWell(
        onTap: () async {
          cardTapped = !cardTapped;
          if (cardTapped) {
            tappedPlaceDetail = await MapServices()
                .getPlace(allFavoritePlaces[index]['place_id']);
            setState(() {});
          }
          // moveCameraSlightly();
        },
        child: Stack(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 20.0,
                ),
                height: 125.0,
                width: 275.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0.0, 4.0),
                          blurRadius: 10.0)
                    ]),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white),
                  child: Row(
                    children: [
                      _pageController.position.haveDimensions
                          ? _pageController.page!.toInt() == index
                              ? Container(
                                  height: 90.0,
                                  width: 90.0,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        topLeft: Radius.circular(10.0),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(placeImg != ''
                                              ? 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photo_reference=$placeImg&key=$key'
                                              : 'https://pic.onlinewebfonts.com/svg/img_546302.png'),
                                          fit: BoxFit.cover)),
                                )
                              : Container(
                                  height: 90.0,
                                  width: 20.0,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        topLeft: Radius.circular(10.0),
                                      ),
                                      color: Colors.blue),
                                )
                          : Container(),
                      const SizedBox(width: 5.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 170.0,
                            child: Text(allFavoritePlaces[index]['name'],
                                style: const TextStyle(
                                    fontSize: 12.5,
                                    fontFamily: 'WorkSans',
                                    fontWeight: FontWeight.bold)),
                          ),
                          RatingStars(
                            value: allFavoritePlaces[index]['rating']
                                        .runtimeType ==
                                    int
                                ? allFavoritePlaces[index]['rating'] * 1.0
                                : allFavoritePlaces[index]['rating'] ?? 0.0,
                            starCount: 5,
                            starSize: 10,
                            valueLabelColor: const Color(0xff9b9b9b),
                            valueLabelTextStyle: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'WorkSans',
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 12.0),
                            valueLabelRadius: 10,
                            maxValue: 5,
                            starSpacing: 2,
                            maxValueVisibility: false,
                            valueLabelVisibility: true,
                            animationDuration:
                                const Duration(milliseconds: 1000),
                            valueLabelPadding: const EdgeInsets.symmetric(
                                vertical: 1, horizontal: 8),
                            valueLabelMargin: const EdgeInsets.only(right: 8),
                            starOffColor: const Color(0xffe7e8ea),
                            starColor: Colors.yellow,
                          ),
                          Container(
                            width: 170.0,
                            child: Text(
                              allFavoritePlaces[index]['business_status'] ??
                                  'none',
                              style: TextStyle(
                                  color: allFavoritePlaces[index]
                                              ['business_status'] ==
                                          'OPERATIONAL'
                                      ? Colors.green
                                      : Colors.red,
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
