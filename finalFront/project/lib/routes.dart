import 'package:flutter/cupertino.dart';
import 'package:project/core/constant/routes.dart';
import 'package:project/view/screen/on_boarding_page.dart';
import 'package:project/view/screen/auth/sign_up_page.dart';
import 'view/screen/auth/sign_in_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.signIn: (context) => SignInPage(),
  AppRoute.signUp: (context) => SignUpPage(),
  AppRoute.onBoarding: (context) => const OnBoardingPage(),
};
