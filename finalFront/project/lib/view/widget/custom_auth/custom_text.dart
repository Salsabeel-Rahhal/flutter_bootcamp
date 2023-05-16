import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../screen/auth/sign_in_page.dart';
import '../../screen/auth/sign_up_page.dart';

class CustomText extends StatelessWidget {
  CustomText({
    super.key,
    this.textOne,
    required this.textTwo,
    required this.onTap,
  });
  String? textOne;
  final String textTwo;

  final Widget onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textOne!,
          textAlign: TextAlign.end,
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
