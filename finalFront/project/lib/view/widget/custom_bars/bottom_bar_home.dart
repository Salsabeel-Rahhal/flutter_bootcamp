import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurvedBar extends StatelessWidget {
  const CurvedBar({super.key, required this.page});
  final PageController page;
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();
    return Stack(children: [
      CurvedNavigationBar(
        height: 50,
        key: bottomNavigationKey,
        animationDuration: const Duration(milliseconds: 500),
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        color: Color.fromARGB(255, 129, 61, 212),
        items: const [
          Icon(
            Icons.settings,
            color: Colors.white,
            size: 22,
          ),
          Icon(Icons.favorite, color: Colors.white, size: 22),
          Icon(
            Icons.home,
            color: Colors.white,
            size: 22,
          ),
          Icon(Icons.calendar_month, color: Colors.white, size: 22),
          Icon(Icons.location_on_outlined, color: Colors.white, size: 22),
        ],
        onTap: (Index) {
          currentIndex = Index;
          print("cuurent index is $Index");
        },
      ),
    ]);
  }
}
