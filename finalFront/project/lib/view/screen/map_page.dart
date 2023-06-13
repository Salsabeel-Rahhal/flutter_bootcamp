// import 'dart:async';

// import 'package:fab_circular_menu/fab_circular_menu.dart';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
// import 'package:project/view/widget/search.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../../data/model/auto_complete.dart';
// import '../../providers/search_places.dart';
// import '../../services/map_services.dart';
// import '../widget/bars/home_app_bar.dart';

// class MapPage extends ConsumerStatefulWidget {
//   MapPage({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() {
//     throw UnimplementedError();
//   }
// }

// class _MapPageState extends ConsumerState<MapPage> {
//   double zoomVal = 5.0;
//   final Completer<GoogleMapController> _controller = Completer();
//   TextEditingController searchController = TextEditingController();
//   List allFavoritePlaces = [];
//   bool searchToggle = true;
//   bool raduisSlider = false;
//   bool pressedNear = false;
//   bool cardTapped = false;
//   bool getDirections = false;

//   Timer? _debounce;
//   Set<Marker> _markers = Set<Marker>();
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final allSearchResults = ref.watch(placeResultsProvider);
//     final searchFlag = ref.watch(searchToggleProvider);
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Stack(
//           children: <Widget>[
//             _GoogleMap(context),
//             // SearchBar(textController: searchController),
//             searchToggle
//                 ? Padding(
//                     padding: const EdgeInsets.fromLTRB(15, 40, 15, 5),
//                     child: Column(
//                       children: [
//                         Container(
//                             height: 50,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(15),
//                               color: Colors.white,
//                             ),
//                             child: TextFormField(
//                               controller: searchController,
//                               decoration: InputDecoration(
//                                   contentPadding: const EdgeInsets.symmetric(
//                                       horizontal: 20.0, vertical: 15.0),
//                                   border: InputBorder.none,
//                                   hintText: 'Search',
//                                   suffixIcon: IconButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           searchToggle = false;
//                                           searchController.text = '';
//                                         });
//                                       },
//                                       icon: const Icon(Icons.close))),
//                               onChanged: (value) {
//                                 if (_debounce?.isActive ?? false)
//                                   _debounce?.cancel();
//                                 _debounce =
//                                     Timer(const Duration(milliseconds: 700),
//                                         () async {
//                                   if (value.length > 2) {
//                                     if (!searchFlag.searchToggle) {
//                                       searchFlag.toggleSearch();
//                                       _markers = {};
//                                     }

//                                     List<AutoCompleteResult> searchResults =
//                                         await MapServices().searchPlaces(value);

//                                     allSearchResults.setResults(searchResults);
//                                   } else {
//                                     List<AutoCompleteResult> emptyList = [];
//                                     allSearchResults.setResults(emptyList);
//                                   }
//                                 });
//                               },
//                             ))
//                       ],
//                     ),
//                   )
//                 : Container(),

//             // _zoomminusfunction(),
//             // _zoomplusfunction(),
//           ],
//         ),
//       ),
//       floatingActionButton: FabCircularMenu(
//           alignment: Alignment.bottomLeft,
//           fabColor: Colors.white,
//           fabOpenColor: Colors.green.shade300,
//           ringDiameter: 250,
//           ringWidth: 60,
//           ringColor: Colors.green.shade300,
//           fabSize: 60,
//           children: [
//             IconButton(
//                 onPressed: () {
//                   setState(() {
//                     searchToggle = true;
//                     raduisSlider = false;
//                     pressedNear = false;
//                     cardTapped = false;
//                     getDirections = false;
//                   });
//                 },
//                 icon: const Icon(Icons.search)),
//             IconButton(
//                 onPressed: () {
//                   setState(() {});
//                 },
//                 icon: const Icon(Icons.navigation))
//           ]),
//     );
//   }

//   Widget _zoomminusfunction() {
//     return Align(
//       alignment: Alignment.topLeft,
//       child: IconButton(
//           icon: Icon(Icons.zoom_out_map_outlined, color: Color(0xff6200ee)),
//           onPressed: () {
//             zoomVal--;
//             _minus(zoomVal);
//           }),
//     );
//   }

//   Widget _zoomplusfunction() {
//     return Align(
//       alignment: Alignment.topRight,
//       child: IconButton(
//           icon: Icon(Icons.zoom_in_map_outlined, color: Color(0xff6200ee)),
//           onPressed: () {
//             zoomVal++;
//             _plus(zoomVal);
//           }),
//     );
//   }

//   Future<void> _minus(double zoomVal) async {
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(
//         CameraPosition(target: LatLng(40.712776, -74.005974), zoom: zoomVal)));
//   }

//   Future<void> _plus(double zoomVal) async {
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(
//         CameraPosition(target: LatLng(40.712776, -74.005974), zoom: zoomVal)));
//   }

//   Widget _GoogleMap(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.of(context).size.height,
//       width: MediaQuery.of(context).size.width,
//       child: GoogleMap(
//           mapType: MapType.normal,
//           initialCameraPosition: const CameraPosition(
//               target: LatLng(30.054216, 31.337261), zoom: 15),
//           onMapCreated: (GoogleMapController controller) {
//             _controller.complete(controller);
//           },
//           markers: {
//             myMarker,
//             myMarker1,
//             gramercyMarker,
//             bernardinMarker,
//             blueMarker
//           }),
//     );
//   }
// }

// Marker myMarker = Marker(
//   markerId: const MarkerId("marker"),
//   position: const LatLng(50.054216, 31.337261),
//   infoWindow: const InfoWindow(
//     title: "Ward",
//   ),
//   icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
// );

// Marker myMarker1 = Marker(
//   markerId: const MarkerId("marker1"),
//   position: const LatLng(30.054216, 31.337261),
//   infoWindow: const InfoWindow(
//     title: "alreem",
//   ),
//   icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
// );
// Marker gramercyMarker = Marker(
//   markerId: MarkerId('gramercy'),
//   position: LatLng(30.738380, 31.988426),
//   infoWindow: InfoWindow(title: 'Gramercy Tavern'),
//   icon: BitmapDescriptor.defaultMarkerWithHue(
//     BitmapDescriptor.hueViolet,
//   ),
// );

// Marker bernardinMarker = Marker(
//   markerId: MarkerId('bernardin'),
//   position: LatLng(40.761421, -73.981667),
//   infoWindow: InfoWindow(title: 'Le Bernardin'),
//   icon: BitmapDescriptor.defaultMarkerWithHue(
//     BitmapDescriptor.hueViolet,
//   ),
// );
// Marker blueMarker = Marker(
//   markerId: MarkerId('bluehill'),
//   position: LatLng(40.732128, -73.999619),
//   infoWindow: InfoWindow(title: 'Blue Hill'),
//   icon: BitmapDescriptor.defaultMarkerWithHue(
//     BitmapDescriptor.hueViolet,
//   ),
// );
