import 'package:flutter/material.dart';
import 'package:project/view/screen/sign_in_page.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key, required this.body, required this.descriotion});
  final String body;
  final String descriotion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              splashColor:
              Colors.transparent;
              highlightColor:
              Colors.transparent;
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 15,
            )),
      ),
      body: ClipPath(
        clipper: MyCustomClipper(),
        child: Container(
            height: 500,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 74, 20, 140),
                  Color.fromARGB(255, 182, 153, 217)
                ],
              ),
            ),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/onboardingone.png"),
                      radius: 100,
                    ),
                  ]),
            )),
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
        size.height / 4, size.width, size.height * 0.9);
    myPath.lineTo(size.width, 0);
    return myPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
