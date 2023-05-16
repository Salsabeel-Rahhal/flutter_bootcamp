import 'package:flutter/material.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

class CustomBox extends StatelessWidget {
  const CustomBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: TextField(
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 25,
        ),
        decoration: InputDecoration(
            border: const GradientOutlineInputBorder(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 74, 20, 140),
                  Color.fromARGB(255, 6, 122, 51)
                ],
              ),
            ),
            filled: true,
            fillColor: const Color.fromARGB(255, 243, 239, 239),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
