import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:kas_mini_flutter_app/view/page/home.dart';
import 'package:kas_mini_flutter_app/view/page/login.dart';
import 'package:kas_mini_flutter_app/view/page/setting.dart';
import 'package:kas_mini_flutter_app/view/page/splash_screen.dart';
=======
// import 'package:kas_mini_flutter_app/view/page/login.dart';
import 'package:kas_mini_flutter_app/view/widget/menu.card.dart';
// import 'package:kas_mini_flutter_app/view/page/splash_screen.dart';
>>>>>>> ce6dbe916048c149ce597a844f697dc4f358d2f0

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      home:  Home(),
=======
      home:  CardMenu(),
>>>>>>> ce6dbe916048c149ce597a844f697dc4f358d2f0
    );
  }
}
