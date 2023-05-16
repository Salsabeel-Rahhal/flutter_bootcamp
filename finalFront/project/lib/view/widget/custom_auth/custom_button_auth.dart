import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final Widget onPressed;
  const CustomButtonAuth(
      {super.key, required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      height: 50,
      width: 200,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 74, 20, 140),
              Color.fromARGB(255, 182, 153, 217)
            ],
          ),
          borderRadius: BorderRadius.circular(25.0)),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 15),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => onPressed));
        },
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
