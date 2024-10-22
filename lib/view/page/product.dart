import 'package:flutter/material.dart';
import 'package:kas_mini_flutter_app/model/product.dart';
import 'package:kas_mini_flutter_app/utils/colors.dart';
import 'package:kas_mini_flutter_app/view/page/add_product.dart';
import 'package:kas_mini_flutter_app/view/widget/page_title.dart';
import 'package:kas_mini_flutter_app/view/widget/product_card.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            Column(
              children: [
                const PageTitle(title: "PRODUCT"),
                Expanded(
                    child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return ZoomTapAnimation(
                      onTap: () {},
                      child: ProductCard(
                        productImage: itemProduct[index].productImage,
                        productPrice: itemProduct[index].productCategory,
                        productCategory: itemProduct[index].productCategory,
                        productName: itemProduct[index].productName,
                        productStock: itemProduct[index].productStock,
                      ),
                    );
                  },
                  itemCount: itemProduct.length,
                ))
              ],
            ),
            Positioned(
              bottom: 20,
              right: 0,
              left: 0,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const AddProductPage())
                  );
                },
                backgroundColor: secondaryColor,
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
