import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';

class Facebook extends StatelessWidget {
  const Facebook({super.key});
  static const TextStyle _style = TextStyle(color: Colors.white, fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 57, 138),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
          ),
          Center(
            child: Text(
              "Facebook",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Card(
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email or phone number',
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Card(
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
              width: 100,
              color: Colors.white.withOpacity(0.2),
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 55),
              padding: EdgeInsets.all(13),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              )),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              'Sign Up for Facebook',
              style: _style,
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Need Help ?',
                style: _style,
              )),
          SizedBox(
            height: 150,
          )
        ],
      ),
    );
  }
}
