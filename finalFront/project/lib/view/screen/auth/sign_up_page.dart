import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import '../../widget/custom_auth/custom_text_form_auth.dart';
import 'package:project/view/screen/auth/sign_in_page.dart';
import '../../widget/custom_auth/custom_button_auth.dart';
import 'package:flutter/material.dart';
import '../home_page.dart';
import '../../widget/custom_auth/custom_text.dart';
import '../../widget/custom_bars/my_app_bar.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _controllerUserName = TextEditingController();
  final _controllerEmail = TextEditingController();
  final _controllerPhoneNumber = TextEditingController();
  final _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200.0),
        child: MyAppBar(
          title: "Sign Up",
          image: AssetImage(
            "assets/images/onboardingone.png",
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              const Text(
                " Welcome To Macan Family ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormAuth(
                hintText: "Enter your user name",
                labelText: "User Name",
                iconData: Icons.person_2_outlined,
                controller: _controllerUserName,
              ),
              CustomTextFormAuth(
                hintText: "Enter your email",
                labelText: "Email",
                iconData: Icons.email_outlined,
                controller: _controllerEmail,
              ),
              CustomTextFormAuth(
                hintText: "Enter a password",
                labelText: "Password",
                iconData: Icons.lock_outlined,
                controller: _controllerPassword,
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  controller: _controllerPhoneNumber,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 30,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: const Text(
                      "Phone Number",
                      style: TextStyle(fontSize: 15),
                    ),
                    hintText: "Enter Your Phone Number",
                    hintStyle: const TextStyle(fontSize: 15),
                    suffixIcon: const Icon(
                      Icons.phone_android_outlined,
                      size: 18,
                    ),
                    border: GradientOutlineInputBorder(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 74, 20, 140),
                          Color.fromARGB(255, 6, 122, 51),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your phone number";
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButtonAuth(
                width: 200,
                text: "Sign Up",
                onPressed: () {
                  // Add logic to sign up the user here
                  // Once the user is signed up, navigate to the home page
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInPage(),
                    ),
                  );
                },
                child: CustomText(
                  textOne: "have an account ?",
                  textTwo: " Sign In",
                  onTap1: const SignInPage(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
