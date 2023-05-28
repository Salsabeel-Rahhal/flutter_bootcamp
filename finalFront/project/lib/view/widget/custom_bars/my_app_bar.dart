import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyAppBar extends StatelessWidget {
  MyAppBar(
      {super.key,
      required this.body,
      required this.description,
      required this.title});
  final String title;
  final String body;
  final String description;
  ImageProvider<Object>? image;

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
              Navigator.pop(context);
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
            width: double.infinity,
            height: 500,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 74, 20, 140),
                  Color.fromARGB(255, 182, 153, 217)
                ],
              ),
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 35, horizontal: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/onboardingone.png"),
                      radius: 75,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
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
