import 'package:flutter/material.dart';

class CustomButtonLanguage extends StatelessWidget {
  const CustomButtonLanguage(
      {super.key, required this.Title, required this.onPressed});
  final String Title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.only(bottom: 30),
          height: 50,
          width: 100,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 74, 20, 140),
                  Color.fromARGB(255, 182, 153, 217)
                ],
              ),
              borderRadius: BorderRadius.circular(25.0)),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              elevation: 0,
            ),
            child: Text(""),
          )),
    );
  }
}
