import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late TextEditingController _usernameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    bool obscureText = true;
    final _keyForm = GlobalKey<FormState>();
    _usernameController = TextEditingController(text: 'johndoe');
    _emailController = TextEditingController(text: 'johndoe@example.com');
    _passwordController = TextEditingController(text: 'password123');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !EmailValidator.validate(value)) {
                        return "Please enter an email address";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        hintText: "example@john.com",
                        prefixIcon: Icon(Icons.email)),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    obscureText: obscureText,
                    validator: (value) {
                      if (value == null || value.length < 2) {
                        return "Please enter an valid password";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "***",
                        suffix: InkWell(
                          onTap: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          child: obscureText
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                        ),
                        prefixIcon: const Icon(Icons.password)),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        _handleLoginAction();
                      },
                      child: const Text("Login"),
                    ),
                  ),
                ])),
      ),
    );
  }

  _handleLoginAction() async {
    if (_keyForm.currentState!.validate()) {
      String email = emailController.text;
      String password = passwordController.text;

      User user = User(email: email, password: password);
      EasyLoading.show(status: "Loading");
      UserConntroller().login(user).then((value) {
        EasyLoading.dismiss();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }).catchError((ex) {
        EasyLoading.dismiss();
        EasyLoading.showError(ex.toString());
      });

      // // App 1
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => HomePage(user)));

      // // App 2
      // dynamic result =
      //     await Navigator.pushNamed(context, "/home", arguments: user);

      // print(result);
    }
  }
}

class User {
  String email;
  String password;
  String? username;

  User({required this.email, required this.password, this.username});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      email: json["email"],
      password: json["password"],
      username: json["username"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "password": password,
      //"username": username,
    };
  }

  factory User.fromQuery(QueryDocumentSnapshot<Object?> json) {
    return User(
      password: json["email"] ?? "",
      username: json["password"] ?? "",
      email: json["username"] ?? "",
    );
  }
}
