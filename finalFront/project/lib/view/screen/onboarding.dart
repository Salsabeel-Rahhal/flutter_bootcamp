import 'package:flutter/material.dart';
import 'package:project/data/datasource/static/static.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: PageView.builder(
                itemCount: onBoardingList.length,
                itemBuilder: (context, i) => Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Text(
                        //   onBoardingList[i].title!,
                        //   style: TextStyle(
                        //       fontSize: 30, color: Colors.purple[900]),
                        // ),
                        CircleAvatar(
                          backgroundColor: Colors.purple[900],
                          radius: 153,
                          child: CircleAvatar(
                              backgroundImage:
                                  AssetImage(onBoardingList[i].image!),
                              radius: 150),
                        ),
                        // Image.asset(onBoardingList[i].image!),

                        Text(
                          onBoardingList[i].body!,
                          style: TextStyle(
                              fontSize: 15, color: Colors.purple[900]),
                        ),
                        SizedBox(height: 20),

                        Container(
                          child: List.generate(
                              onBoardingList.length,
                              (index) => Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.purple[900],
                                    ),
                                  )),
                        )

                        // Container(
                        //   height: 60,
                        //   margin: EdgeInsets.all(40),
                        //   width: double.infinity,
                        //   color: Colors.purple[900],
                        //   child: OutlinedButton(
                        //       onPressed: () {},
                        //       child: Text(
                        //         "Next",
                        //         style: TextStyle(
                        //             color: Colors.white, fontSize: 13),
                        //       )),
                        // )
                      ],
                    ))));
  }
}
