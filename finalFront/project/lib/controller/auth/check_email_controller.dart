import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project/core/constant/routes.dart';

abstract class CheckEmail extends GetxController {
  check();
  goToVerfiyCode();
}

class CheckEmailImp extends CheckEmail {
  late TextEditingController email;

  @override
  check() {}

  @override
  goToVerfiyCode() {
    Get.toNamed(AppRoute.verfiyCodeSignUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
