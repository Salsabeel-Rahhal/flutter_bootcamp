import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({super.key, required this.Title, required this.body});
  final String Title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: ClipPath(
        clipper: MyCustomClipper(),
        child: Container(
          height: 300,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 74, 20, 140),
                Color.fromARGB(255, 182, 153, 217)
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  Title,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path myPath = Path();
    myPath.lineTo(0, size.height / 2);
    myPath.cubicTo(size.width / 4, 3 * (size.height / 2), (3 * size.width / 4),
        size.height / 2, size.width, size.height * 0.9);
    myPath.lineTo(size.width, 0);
    return myPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
