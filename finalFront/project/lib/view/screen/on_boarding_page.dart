import 'package:flutter/material.dart';
import 'package:project/core/constant/routes.dart';
import 'package:project/data/datasource/static/static.dart';
import 'package:project/view/screen/sign_in_page.dart';
import 'package:project/view/widget/custom_button_onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  var _controller = PageController();

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(10),
      child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              currentIndex = value;
            });
            print(value);
          },
          controller: _controller,
          itemCount: onBoardingList.length,
          itemBuilder: (context, i) => Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.purple[900],
                    radius: 153,
                    child: CircleAvatar(
                        backgroundImage: AssetImage(onBoardingList[i].image!),
                        radius: 150),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    onBoardingList[i].title!,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.purple[900],
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    child: Text(onBoardingList[i].body!,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center),
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: onBoardingList.length,
                    effect: WormEffect(
                        activeDotColor: Colors.purple.shade900,
                        dotColor: Colors.purple.shade900.withOpacity(0.5),
                        dotWidth: 15),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // CustomButton(
                      //     labelOne: "Skip",
                      //     labelTwo: "Let's Go",
                      //     currentIndex: currentIndex,
                      //     controller: _controller),
                      // CustomButton(
                      //     labelOne: "Next",
                      //     labelTwo: "Continue",
                      //     currentIndex: currentIndex,
                      //     controller: _controller)
                      Container(
                          margin: const EdgeInsets.only(bottom: 30),
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 74, 20, 140),
                                  Color.fromARGB(255, 182, 153, 217)
                                ],
                              ),
                              borderRadius: BorderRadius.circular(25.0)),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignInPage()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              elevation: 0,
                            ),
                            child: Text(
                                currentIndex == onBoardingList.length - 1
                                    ? "Let's Go"
                                    : "Skip"),
                          )),
                      Container(
                          margin: const EdgeInsets.only(bottom: 30),
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 74, 20, 140),
                                  Color.fromARGB(255, 182, 153, 217)
                                ],
                              ),
                              borderRadius: BorderRadius.circular(25.0)),
                          child: ElevatedButton(
                            onPressed: () {
                              if (currentIndex < onBoardingList.length - 1) {
                                _controller.nextPage(
                                    duration: const Duration(milliseconds: 900),
                                    curve: Curves.easeInOut);
                              } else {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignInPage()));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              elevation: 0,
                            ),
                            child: Text(
                                currentIndex == onBoardingList.length - 1
                                    ? "Continue"
                                    : "Next"),
                          )),
                    ],
                  ),
                ],
              )),
    )));
  }
}
