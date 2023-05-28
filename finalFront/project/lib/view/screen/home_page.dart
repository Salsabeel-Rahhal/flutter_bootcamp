import 'package:flutter/material.dart';
import '../widget/custom_bars/bottom_bar_home.dart';
import '../widget/custom_bars/home_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                const Size.fromHeight(200.0), // here the desired height
            child: HomeAppBar(textController: controller)),
        bottomNavigationBar: const CurvedBar(),
        body: Container(
          child: ListView(
            children: [
              Container(
                child: Row(
                  children: const [],
                ),
              )
            ],
          ),
        ));
  }
}
