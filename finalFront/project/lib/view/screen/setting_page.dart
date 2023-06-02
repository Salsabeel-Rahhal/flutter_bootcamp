import 'package:flutter/material.dart';

import '../widget/custom_bars/my_app_bar.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200.0),
        child: MyAppBar(
          title: "Settings",
          body: "",
          description: "",
        ),
      ),
    );
  }
}
