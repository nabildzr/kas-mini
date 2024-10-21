import 'package:flutter/material.dart';
import 'package:kas_mini_flutter_app/view/page/home.dart';
import 'package:kas_mini_flutter_app/view/page/login.dart';
import 'package:kas_mini_flutter_app/view/page/setting.dart';
import 'package:kas_mini_flutter_app/view/page/splash_screen.dart';
import 'package:kas_mini_flutter_app/view/widget/product_card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    ProductCard(
                      productImage: 'assets/products/image.png',
                      productPrice: 'Aww',
                      productCategory: 'Aww',
                      productName: 'Aww',
                    ),
                    ProductCard(
                      productImage: 'assets/products/image.png',
                      productPrice: 'Aww',
                      productCategory: 'Aww',
                      productName: 'Aww',
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
