import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class VerficationPage extends StatefulWidget {
  const verfication({super.key});

  @override
  State<VerficationPage> createState() => _VerficationPageState();
}

class _VerficationPageState extends State<VerficationPage> {
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
                "Verification                                                                      ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 300,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Kami telah mengirimkan kode verifikasi ke ',
                  style: TextStyle(color: Colors.grey),
                ),
                TextSpan(
                  text: '+628*****716',
                  style: TextStyle(color: Colors.grey),
                ),
                TextSpan(
                  text: "Ganti?",
                  style: TextStyle(color: Color.fromARGB(255, 6, 89, 156)),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 80,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(" verification Code ",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              Text(
                "Re-send Code",
                style: TextStyle(color: Color.fromARGB(255, 6, 89, 156)),
              ),
            ],
          ),
        ),
        Column(children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 60,
                  child: TextField(
                    decoration: InputDecoration(
                        // label: Center(child: Text("1")),
                        filled: true,
                        fillColor: Color.fromARGB(255, 243, 239, 239),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
                Container(
                  width: 60,
                  child: TextField(
                    decoration: InputDecoration(
                        // label: Center(child: Text("3")),
                        filled: true,
                        fillColor: Color.fromARGB(255, 243, 239, 239),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
                Container(
                  width: 60,
                  child: TextField(
                    decoration: InputDecoration(
                        // label: Center(child: Text("5")),
                        filled: true,
                        fillColor: Color.fromARGB(255, 243, 239, 239),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
                Container(
                  width: 60,
                  child: TextField(
                    decoration: InputDecoration(
                        // label: Center(child: Text("4")),
                        filled: true,
                        fillColor: Color.fromARGB(255, 243, 239, 239),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
              ],
            ),
          )

          // SizedBox(
          //   width: 70,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     mainAxisSize: MainAxisSize.max,
          //     children: [
          //       // TextFormField(
          //       //   decoration: InputDecoration(
          //       //     filled: true,
          //       //     fillColor: Color.fromARGB(255, 243, 239, 239),
          //       //     enabledBorder: OutlineInputBorder(
          //       //         borderRadius: BorderRadius.circular(5.0),
          //       //         borderSide:
          //       //             BorderSide(color: Colors.white, width: 3.0)),
          //       //   ),
          //       // ),
          //       // TextFormField(
          //       //   decoration: InputDecoration(
          //       //     filled: true,
          //       //     fillColor: Color.fromARGB(255, 243, 239, 239),
          //       //     enabledBorder: OutlineInputBorder(
          //       //         borderRadius: BorderRadius.circular(5.0),
          //       //         borderSide:
          //       //             BorderSide(color: Colors.white, width: 3.0)),
          //       //   ),
          //       // ),
          //       // TextFormField(
          //       //   decoration: InputDecoration(
          //       //     filled: true,
          //       //     fillColor: Color.fromARGB(255, 243, 239, 239),
          //       //     enabledBorder: OutlineInputBorder(
          //       //         borderRadius: BorderRadius.circular(5.0),
          //       //         borderSide:
          //       //             BorderSide(color: Colors.white, width: 3.0)),
          //       //   ),
          //       // ),
          //       // TextFormField(
          //       //   decoration: InputDecoration(
          //       //     filled: true,
          //       //     fillColor: Color.fromARGB(255, 243, 239, 239),
          //       //     enabledBorder: OutlineInputBorder(
          //       //         borderRadius: BorderRadius.circular(5.0),
          //       //         borderSide:
          //       //             BorderSide(color: Colors.white, width: 3.0)),
          //       //   ),
          //       // ),
          //     ],
          //   ),
          // ),
          ,
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Kirim Kode ulang dalam",
                style: TextStyle(color: Colors.grey),
              ),
              Text("03:05 ", style: TextStyle(color: Colors.grey)),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Center(
                    child: Text(
                  "Continue ",
                  style: TextStyle(color: Colors.white),
                )),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 6, 89, 156))),
              ),
            ),
          ),
        ]),
      ]),
    );
  }
}
