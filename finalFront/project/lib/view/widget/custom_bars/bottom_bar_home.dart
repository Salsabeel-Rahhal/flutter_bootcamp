import 'package:flutter/material.dart';
import 'package:project/view/screen/favorite_page.dart';
import 'package:project/view/screen/home_page.dart';
import 'package:project/view/screen/map_page.dart';
import 'package:project/view/screen/resrvations_page.dart';
import 'package:project/view/screen/setting_page.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 2;

  final List<Widget> _pages = [
    // Add your pages here
    SettingPage(),
    FavoritePage(),
    HomePage(),
    ReservationPage(),
    MapPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
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
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          fixedColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (index) {
            _currentIndex = index;
          },
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          unselectedItemColor: Colors.white,
          selectedIconTheme: const IconThemeData(color: Colors.greenAccent),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, size: 22),
              label: "Settings",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, size: 22),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 22,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month, size: 22),
              label: "Reservations",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on, size: 22),
              label: "Map",
            ),
          ],
        ),
      ),
    );
  }
}
