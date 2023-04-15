import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:project/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // home: const MyHomePage(),
      initialRoute: "/login",
      routes: {
        "/home": (context) => HomePage(email: ""),
        "/login": (context) => MyHomePage()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool obscureText = true;
  final _keyForm = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("Login Page"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _keyForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FlutterLogo(
                  size: 100,
                ),
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !EmailValidator.validate(value)) {
                      return "please enter an email address";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      hintText: "example@hikk.com",
                      prefixIcon: Icon(Icons.email)),
                ),
                TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.length < 6) {
                      return "please enter a correct password";
                    }
                    return null;
                  },
                  obscureText: obscureText,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "*******",
                      suffix: InkWell(
                          onTap: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          child: obscureText
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off)),
                      prefixIcon: const Icon(Icons.password)),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      _handleLoginAction();
                    },
                    child: const Text("login"),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  _handleLoginAction() async {
    if (_keyForm.currentState!.validate()) {
      String email = emailController.text;
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: ((context) => HomePage(
      //               email: email,
      //             ))));
      dynamic result = await Navigator.pushNamed(context, "/home");
      print(result);
    }
  }
}
