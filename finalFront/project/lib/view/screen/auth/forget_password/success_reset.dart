import 'package:flutter/material.dart';
import 'package:project/view/screen/auth/sign_in_page.dart';

import '../../../widget/custom_bars/my_app_bar.dart';

class SuccessReset extends StatefulWidget {
  const SuccessReset({super.key});

  @override
  State<SuccessReset> createState() => _SuccessResetState();
}

class _SuccessResetState extends State<SuccessReset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(200.0), // here the desired height
          child: MyAppBar(
            title: "Success Reset Password",
            body: "",
            descriotion: "",
          )),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 200,
                color: Colors.purple.shade900,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const InkWell(
              child: Center(
                  child: Text(
                "Your password has been updated Successfuly",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              )),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
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
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignInPage()));
                },
                child: const Text(
                  "Go to sign in page",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
