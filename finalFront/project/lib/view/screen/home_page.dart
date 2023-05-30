import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project/view/screen/favorite_page.dart';
import 'package:project/view/screen/map_page.dart';
import 'package:project/view/screen/resrvations_page.dart';
import 'package:project/view/screen/setting_page.dart';
import '../widget/custom_bars/bottom_bar_home.dart';
import '../widget/custom_bars/home_app_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Completer<GoogleMapController> _controller = Completer();

  final placesAuto = PlacesAutocompleteFormField(
      apiKey: " AIzaSyDrGn--NujM3CHoOveNb-Xx4JNafXicakQ");
  // final placeholder= Plac
  final controller = TextEditingController();
  final pageView = PageController();
  int index = 0;
  double zoomVal = 5.0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(200.0), // here the desired height
          child: HomeAppBar(textController: controller)),
      bottomNavigationBar: _createBottomNavigationBar(),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          // margin: const EdgeInsets.symmetric(vertical: 10),
          height: double.infinity,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Boxes(
                    // "https://www.bing.com/images/search?view=detailV2&ccid=3V2fvdA6&id=4DB6231A6C29DC2E11CDC0047CD195E9C88C786B&thid=OIP.3V2fvdA6O0fSG6qGMyMeZwHaEo&mediaurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.dd5d9fbdd03a3b47d21baa8633231e67%3frik%3da3iMyOmV0XwEwA%26riu%3dhttp%253a%252f%252fwww.baltana.com%252ffiles%252fwallpapers-2%252fFood-HD-Wallpapers-04864.jpg%26ehk%3doCGq87EnzGa53wpyGPk3aNhI03hKYPPWLQVzqCKdPe0%253d%26risl%3d%26pid%3dImgRaw%26r%3d0&exph=1200&expw=1920&q=food+image&simid=608054948848819158&FORM=IRPRST&ck=1FEC8BF221DE0BED4E8D16F71A90E908&selectedIndex=12",
                    30.054216,
                    31.337261,
                    "ward"),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Boxes(
                    // "https://www.bing.com/images/search?view=detailV2&ccid=3V2fvdA6&id=4DB6231A6C29DC2E11CDC0047CD195E9C88C786B&thid=OIP.3V2fvdA6O0fSG6qGMyMeZwHaEo&mediaurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.dd5d9fbdd03a3b47d21baa8633231e67%3frik%3da3iMyOmV0XwEwA%26riu%3dhttp%253a%252f%252fwww.baltana.com%252ffiles%252fwallpapers-2%252fFood-HD-Wallpapers-04864.jpg%26ehk%3doCGq87EnzGa53wpyGPk3aNhI03hKYPPWLQVzqCKdPe0%253d%26risl%3d%26pid%3dImgRaw%26r%3d0&exph=1200&expw=1920&q=food+image&simid=608054948848819158&FORM=IRPRST&ck=1FEC8BF221DE0BED4E8D16F71A90E908&selectedIndex=12",
                    30.054216,
                    31.337261,
                    "ward"),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Boxes(
                    // "https://www.bing.com/images/search?view=detailV2&ccid=3V2fvdA6&id=4DB6231A6C29DC2E11CDC0047CD195E9C88C786B&thid=OIP.3V2fvdA6O0fSG6qGMyMeZwHaEo&mediaurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.dd5d9fbdd03a3b47d21baa8633231e67%3frik%3da3iMyOmV0XwEwA%26riu%3dhttp%253a%252f%252fwww.baltana.com%252ffiles%252fwallpapers-2%252fFood-HD-Wallpapers-04864.jpg%26ehk%3doCGq87EnzGa53wpyGPk3aNhI03hKYPPWLQVzqCKdPe0%253d%26risl%3d%26pid%3dImgRaw%26r%3d0&exph=1200&expw=1920&q=food+image&simid=608054948848819158&FORM=IRPRST&ck=1FEC8BF221DE0BED4E8D16F71A90E908&selectedIndex=12",
                    30.054216,
                    31.337261,
                    "ward"),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget myDetailsContainer1(String restaurantName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            restaurantName,
            style: const TextStyle(
                color: Color(0xff6200ee),
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        const SizedBox(height: 5.0),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                child: const Text(
              "4.1",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
            )),
            Container(
              child: const Icon(
                Icons.star_rate_outlined,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: const Icon(
                Icons.star_rate_outlined,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: const Icon(
                Icons.star_rate_outlined,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: const Icon(
                Icons.star_rate_outlined,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: const Icon(
                Icons.star_rate_outlined,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
                child: const Text(
              "(946)",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
            )),
          ],
        )),
        const SizedBox(height: 5.0),
        Container(
            child: const Text(
          "American \u00B7 \u0024\u0024 \u00B7 1.6 mi",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 18.0,
          ),
        )),
        const SizedBox(height: 5.0),
        Container(
            child: const Text(
          "Closed \u00B7 Opens 17:00 Thu",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        )),
      ],
    );
  }

  Future<void> _gotoLocation(double lat, double long) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(lat, long),
      zoom: 15,
      tilt: 50.0,
      bearing: 45.0,
    )));
  }

  Widget Boxes(double lat, double long, String restaurantName) {
    return GestureDetector(
      onTap: () {
        _gotoLocation(lat, long);
      },
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
                    child: const Image(
                      image: NetworkImage(
                        "https://www.bing.com/images/search?view=detailV2&ccid=3V2fvdA6&id=4DB6231A6C29DC2E11CDC0047CD195E9C88C786B&thid=OIP.3V2fvdA6O0fSG6qGMyMeZwHaEo&mediaurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.dd5d9fbdd03a3b47d21baa8633231e67%3frik%3da3iMyOmV0XwEwA%26riu%3dhttp%253a%252f%252fwww.baltana.com%252ffiles%252fwallpapers-2%252fFood-HD-Wallpapers-04864.jpg%26ehk%3doCGq87EnzGa53wpyGPk3aNhI03hKYPPWLQVzqCKdPe0%253d%26risl%3d%26pid%3dImgRaw%26r%3d0&exph=1200&expw=1920&q=food+image&simid=608054948848819158&FORM=IRPRST&ck=1FEC8BF221DE0BED4E8D16F71A90E908&selectedIndex=12",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: myDetailsContainer1(restaurantName),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  Widget _createBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 74, 20, 140),
            Color.fromARGB(255, 182, 153, 217)
          ],
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          // stops: [0.0, 0.8],
          tileMode: TileMode.clamp,
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {},
        showUnselectedLabels: false,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        unselectedItemColor: Colors.white,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 22,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, size: 22),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 22),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month, size: 22),
            label: "Reservations",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city, size: 22),
            label: "Map",
          ),
        ],
      ),
    );
  }
}
