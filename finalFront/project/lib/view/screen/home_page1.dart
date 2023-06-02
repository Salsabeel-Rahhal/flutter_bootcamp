import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:project/view/screen/favorite_page.dart';
import 'package:project/view/screen/resrvations_page.dart';
import 'package:project/view/screen/setting_page.dart';

import '../widget/custom_bars/home_app_bar.dart';
import 'map_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GoogleMapsPlaces _places =
      GoogleMapsPlaces(apiKey: 'AIzaSyDrGn--NujM3CHoOveNb-Xx4JNafXicakQ');
  final controller = TextEditingController();
  List<PlacesSearchResult> _placesList = [];
  @override
  void initState() {
    super.initState();
    _fetchPlaces();
  }

  Future<void> _fetchPlaces() async {
    PlacesSearchResponse response = await _places.searchNearbyWithRadius(
        Location(lat: 37.7749, lng: -122.4194), 5000,
        type: 'restaurant');

    setState(() {
      _placesList = response.results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(200.0), // here the desired height
          child: HomeAppBar(textController: controller)),
      body: ListView.builder(
        itemCount: _placesList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage(_placesList[index].photos[0].photoReference),
            ),
            title: Text(_placesList[index].name),
            subtitle: Text(_placesList[index].vicinity!),
          );
        },
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 74, 20, 140),
              Color.fromARGB(255, 182, 153, 217)
            ],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingPage()));
              },
              icon: const Icon(Icons.settings),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FavoritePage()));
              },
              icon: const Icon(Icons.favorite),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              icon: const Icon(Icons.home),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReservationPage()));
              },
              icon: const Icon(Icons.calendar_month_outlined),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapPage()));
              },
              icon: const Icon(Icons.location_on),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

Widget Boxes(double lat, double long, String restaurantName) {
  return GestureDetector(
    onTap: () {},
    child: FittedBox(
      child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: const Color(0x802196F3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 180,
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24.0),
                  // child: Image(
                  //   image: NetworkImage(

                  //         // ? 'https://maps.googleapis.com/maps/api/place/photo?parameters&photo_reference=$placeImg&key=$key&maxwidth=400'
                  //         // : 'https://pic.onlinewebfonts.com/svg/img_546302.png',
                  //   ),
                  //   fit: BoxFit.fill,
                  // ),
                ),
              ),
              // Container(
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: myDetailsContainer1(restaurantName),
              //   ),
              // ),
            ],
          )),
    ),
  );
}
