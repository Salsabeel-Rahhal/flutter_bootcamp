import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

class CustomTextFormAuth extends StatelessWidget {
  CustomTextFormAuth({
    super.key,
    required this.hintText,
    required this.labelText,
    this.iconData,
    this.controller,
  });
  final String hintText;
  final String labelText;
  final IconData? iconData;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: TextFormField(
        controller: controller,
        validator: (text) {
          if (!EmailValidator.validate(text!)) {
            return "Please add correct email address";
          }

          (text) {
            if (text!.length < 8) {
              return "Please add a valid passowrd";
            }
          };
        },
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            label: Text(
              labelText,
              style: const TextStyle(fontSize: 15),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 15),
            suffixIcon: Icon(
              iconData,
              size: 18,
            ),
            border: GradientOutlineInputBorder(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 74, 20, 140),
                    Color.fromARGB(255, 6, 122, 51)
                  ],
                ),
                borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
