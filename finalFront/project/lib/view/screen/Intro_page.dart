import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(11, 2, 4, 5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/macan.png"),
            radius: 100,
          ),
          // Image.network(
          //     "https://cdn3.iconfinder.com/data/icons/travel-and-tourism-6/480/Dish-512.png"),
          // Image.asset("assets/images/food2.png"),
          // const Text(
          //   'MACAN',
          //   style: TextStyle(
          //     fontSize: 24.0,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          SizedBox(height: 16.0),
          const Text(
            'Reservation Application, Just Choose Your Place And We Will Help You ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 32.0),
          ElevatedButton(
            child: Text('Get Started'),
            onPressed: () {
              // Navigate to the next page
            },
          ),
        ],
      ),
    );
  }
}
