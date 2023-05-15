import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../screen/sign_up_page.dart';

class CustomText extends StatelessWidget {
  CustomText(
      {super.key, required this.textOne, required this.textTwo, this.onTap});
  final String textOne;
  final String textTwo;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textOne,
          textAlign: TextAlign.end,
        ),
        InkWell(
          child: GradientText(textTwo, colors: const [
            Color.fromARGB(255, 74, 20, 140),
            Color.fromARGB(255, 182, 153, 217)
          ]),
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => SignUpPage()));
          },
        ),
      ],
    );
  }
}
