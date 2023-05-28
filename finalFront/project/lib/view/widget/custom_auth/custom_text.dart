import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  CustomText({
    super.key,
    this.textOne,
    required this.textTwo,
    required this.onTap,
  });
  String? textOne;
  final String textTwo;

  Widget onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textOne!,
          textAlign: TextAlign.end,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.normal),
        ),
        InkWell(
          child: GradientText(textTwo, colors: const [
            Color.fromARGB(255, 74, 20, 140),
            Color.fromARGB(255, 6, 122, 51)
          ]),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => onTap));
          },
        ),
      ],
    );
  }
}
