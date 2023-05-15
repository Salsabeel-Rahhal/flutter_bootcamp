import 'package:flutter/material.dart';
import 'package:project/core/constant/image_asset.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      child: Image.asset(ImageAsset.profileImage),
    );
  }
}
