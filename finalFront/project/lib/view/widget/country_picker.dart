import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CountryCode extends StatelessWidget {
  const CountryCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: const [
              BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 7,
                  color: Colors.white,
                  offset: Offset(0, 3)),
            ]),
        child: IntlPhoneField(
          decoration: const InputDecoration(label: Text("Phone Number")),
          initialCountryCode: 'pk',
        ),
      ),
    );
  }
}
