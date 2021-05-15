import 'dart:async';
import 'package:flutter/material.dart';
import 'package:up2us/config/app_images.dart';
import '../auth/signinScreen/signin_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splashScreen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(SigninScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.width / 2,
              width: MediaQuery.of(context).size.width / 2,
              child: Image.asset(appNameWithLogo),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.width / 3),
        ],
      ),
    );
  }
}
