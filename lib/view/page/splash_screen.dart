import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// need this for Timer()
import 'package:kas_mini_flutter_app/utils/colors.dart';
import 'package:kas_mini_flutter_app/view/page/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
          child: Stack(
        children: [
          Opacity(
            opacity: 0.2,
            child: Image.asset(
              'assets/images/bg-splash-screen-without-opacity.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/logo-outlined.png',
                  fit: BoxFit.cover,
                  width: 75,
                  height: 75,
                ),
                Gap(7),
                Text(
                  'EazieKas',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
