import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project/core/localization/change_locals.dart';
import 'package:project/services/my_services.dart';
import 'package:project/view/screen/auth/forget_password/forget_password.dart';
import 'package:project/view/screen/auth/forget_password/success_reset.dart';
import 'package:project/view/screen/auth/forget_password/verfication_page.dart';
import 'package:project/view/screen/auth/sign_in_page.dart';
import 'package:project/view/screen/auth/sign_up_page.dart';
import 'package:project/view/screen/auth/success_sign_up.dart';
import 'package:project/view/screen/favorite_page.dart';
import 'package:project/view/screen/home_page.dart';
import 'package:project/view/screen/home_page1.dart';
import 'package:project/view/screen/language.dart';
import 'package:project/view/screen/map_page.dart';
import 'package:project/view/screen/on_boarding_page.dart';
import 'package:project/view/screen/profile_page.dart';
import 'package:project/view/screen/resrvations_page.dart';
import 'package:project/view/screen/setting_page.dart';
import 'package:project/view/screen/shops.dart';
import 'package:project/view/widget/current_location.dart';
import 'package:lottie/lottie.dart';

import 'core/localization/translation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
        translations: MyTranslation(),
        debugShowCheckedModeBanner: false,
        locale: controller.language,
        builder: EasyLoading.init(),
        theme: controller.appTheme,
        home: ReservationPage());
  }
}

class SplachPage extends StatefulWidget {
  const SplachPage({
    super.key,
  });

  @override
  State<SplachPage> createState() => _SplachPageState();
}

class _SplachPageState extends State<SplachPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6)).then((value) =>
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => ShopPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 74, 20, 140),
            Color.fromARGB(255, 182, 153, 217)
          ])),
          child: LottieBuilder.asset('assets/animations/f3.json'),
        ),
      ),
    );
  }
}
