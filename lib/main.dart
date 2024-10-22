import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:kas_mini_flutter_app/view/page/category_product.dart';
import 'package:kas_mini_flutter_app/view/page/home.dart';
import 'package:kas_mini_flutter_app/view/page/login.dart';
import 'package:kas_mini_flutter_app/view/page/product.dart';
import 'package:kas_mini_flutter_app/view/page/setting.dart';
import 'package:kas_mini_flutter_app/view/page/splash_screen.dart';
import 'package:kas_mini_flutter_app/view/widget/product_card.dart';
=======
import 'package:kas_mini_flutter_app/view/page/home-2.dart';


>>>>>>> 1358e485d0469cfd30f82832f7e2cb130b797e0a

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
<<<<<<< HEAD
        home: CategoryProductPage()
=======
        home: Home()
>>>>>>> 1358e485d0469cfd30f82832f7e2cb130b797e0a
        );
  }
}
