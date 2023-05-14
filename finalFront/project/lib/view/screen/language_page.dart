import 'package:flutter/material.dart';
import 'package:project/view/widget/custom_button_language.dart';
import '../widget/my_app_bar.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0), // here the desired height
          child: MyAppBar(
            Title: "Choose Your Language",
            body: "",
            descriotion: "",
          )),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.all(30),
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 74, 20, 140),
                        Color.fromARGB(255, 182, 153, 217)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(25.0)),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                  ),
                  child: const Text("Arabic"),
                )),

            Container(
                margin: const EdgeInsets.all(30),
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 74, 20, 140),
                        Color.fromARGB(255, 182, 153, 217)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(25.0)),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                  ),
                  child: const Text("English"),
                )),
            const SizedBox(
              height: 100,
            ),
            // CustomButtonLanguage(Title: "English", onPressed: () {}),
            // CustomButtonLanguage(Title: "Arabic", onPressed: () {}),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [],
        ),
      ]),
    );
  }
}
