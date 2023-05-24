import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurvedBar extends StatelessWidget {
  const CurvedBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CurvedNavigationBar(
          animationDuration: Duration(milliseconds: 500),
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          color: Color.fromARGB(255, 74, 20, 140),
          items: const [
            Icon(
              Icons.settings,
              color: Colors.white,
              size: 25,
            ),
            Icon(
              Icons.account_circle_rounded,
              color: Colors.white,
              size: 25,
            ),
            Icon(
              Icons.home,
              color: Colors.white,
              size: 25,
            ),
            Icon(Icons.favorite, color: Colors.white, size: 25),
            Icon(Icons.calendar_month, color: Colors.white, size: 25),
          ]),
    ]);
  }
}
