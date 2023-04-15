import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  String? email;
  HomePage({super.key, required this.email});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, "Hello");
            },
            child: Text("Back"),
          )
        ],
      )),
    );
  }
}




// class HomePage extends StatelessWidget {
//   String email;
//   HomePage({super.key, required this.email});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Home Page")),
//       body: Center(
//         child: Text("Hello $email"),
//       ),
//     );
//   }
// }
