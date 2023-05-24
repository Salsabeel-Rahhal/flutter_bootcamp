import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../../controller/auth/verfiy_code_sign_up.dart';
import '../../widget/custom_auth/custom_button_auth.dart';
import '../../widget/custom_auth/custom_text.dart';
import '../../widget/custom_bars/my_app_bar.dart';

class VerfiySignUp extends StatelessWidget {
  VerfiySignUp({super.key});
  final controller = VerfiyCodeSignUpImp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(200.0), // here the desired height
          child: MyAppBar(
            title: "Verfication Code",
            body: "",
            descriotion: "",
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              GradientText("Verfication Code", colors: const [
                Color.fromARGB(255, 74, 20, 140),
                Color.fromARGB(255, 6, 122, 51)
              ]),
              CustomText(
                  textOne: "", textTwo: "Re-send Code", onTap: const Text(""))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  OtpTextField(
                    fieldWidth: 50,
                    borderRadius: BorderRadius.circular(30),
                    numberOfFields: 5,
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
                        enabledBorder: GradientOutlineInputBorder(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 74, 20, 140),
                                Color.fromARGB(255, 6, 122, 51)
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20))),
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      // showDialog(
                      //     context: context,
                      //     builder: (context) {
                      //       return AlertDialog(
                      //         title: Text("Verification Code "),
                      //         content:
                      //             Text("Code entered is $verificationCode"),
                      //       );
                      //     });
                      controller.goToSuccessSignUp();
                    }, // end onSubmit
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  " You can re-send the code after 30 minute's",
                  style: TextStyle(color: Colors.grey),
                ),
                Text("03:05 ", style: TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            CustomButtonAuth(
                text: "Continue", onPressed: controller.goToSuccessSignUp())
          ]),
        ]),
      ),
    );
  }
}
