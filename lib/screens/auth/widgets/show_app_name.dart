import 'package:flutter/material.dart';
import 'package:up2us/config/app_images.dart';

class ShowAppName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.width / 8),
        Center(
          child: SizedBox(
            width: size.width / 5,
            child: Image.asset(appIcon),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
