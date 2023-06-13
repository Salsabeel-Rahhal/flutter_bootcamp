import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/shops_controller.dart';
import '../../data/model/shops_model.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key});

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  final ShopsController shopController = Get.put(ShopsController());
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 74, 20, 140),
        Color.fromARGB(255, 182, 153, 217)
      ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          FutureBuilder(
            future: (() async {
              try {
                return await shopController
                    .getAll(); // Fetch shop data from the API
              } catch (e) {
                print('Error fetching shops: $e');
                return null;
              }
            })(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Text('Error fetching shops: ${snapshot.error}');
              } else if (snapshot.hasData && snapshot.data != null) {
                List<Shop> shopList =
                    (snapshot.data as List<dynamic>).cast<Shop>();
                print(shopList);

                return Text("shopList");
              } else {
                return const Text('No shops found');
              }
            },
          ),
        ],
      ),
    );
  }
}
