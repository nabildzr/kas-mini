import 'package:flutter/material.dart';
import 'package:kas_mini_flutter_app/view/page/home-2.dart';
import 'package:kas_mini_flutter_app/view/page/login.dart';
import 'package:kas_mini_flutter_app/view/page/list_category.dart';
import 'package:kas_mini_flutter_app/view/page/product.dart';
import 'package:kas_mini_flutter_app/view/page/setting.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home()
        );
  }
}
