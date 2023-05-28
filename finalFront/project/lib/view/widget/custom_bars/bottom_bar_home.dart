import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurvedBar extends StatelessWidget {
  const CurvedBar({super.key});

  @override
  Widget build(BuildContext context) {
    int page = 0;
    GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();
    return Stack(children: [
      CurvedNavigationBar(
          key: bottomNavigationKey,
          animationDuration: const Duration(milliseconds: 500),
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          color: const Color.fromARGB(255, 74, 20, 138),
          items: const [
            Icon(
              Icons.settings,
              color: Colors.white,
              size: 25,
            ),
            Icon(Icons.favorite, color: Colors.white, size: 25),
            Icon(
              Icons.home,
              color: Colors.white,
              size: 25,
            ),
            Icon(Icons.calendar_month, color: Colors.white, size: 25),
            Icon(Icons.location_on_outlined, color: Colors.white, size: 25),
          ]),
    ]);
  }
}
