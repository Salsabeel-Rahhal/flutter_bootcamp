import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Reset extends StatefulWidget {
  const Reset({super.key});

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(children: [
        SizedBox(
          height: 90,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: 300,
            child: Text(
                "Daftar Akun                                                                   ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: 300,
            child: Text(
                "Masukan Email/No .Hp untuk mendaftar                                                                   ",
                style: TextStyle(color: Colors.grey)),
          ),
        ),
        SizedBox(
          height: 80,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
              child: Column(
            children: [
              Container(width: 400, child: Text("New Password")),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: obscureText,
                validator: (value) {
                  if (value == null || value.length < 6) {
                    return "Please enter an new  password";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 243, 239, 239),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide:
                            BorderSide(color: Colors.white, width: 3.0)),
                    hintText: "New Password",
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
              SizedBox(
                height: 20,
              ),
              Container(width: 400, child: Text("Confirm Password")),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: obscureText,
                validator: (value) {
                  if (value == null || value.length < 6) {
                    return "Please enter the password";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 243, 239, 239),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide:
                            BorderSide(color: Colors.white, width: 3.0)),
                    hintText: "Confirm Password",
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
              SizedBox(
                height: 50,
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      //handleLoginAction();
                    });
                  },
                  child: Center(
                      child: Text(
                    "Continue ",
                    style: TextStyle(color: Colors.white),
                  )),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 9, 109, 191))),
                ),
              ),
            ],
          )),
        )
      ]),
    );
  }
}
