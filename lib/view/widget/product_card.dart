import 'package:flutter/material.dart';
import 'package:kas_mini_flutter_app/utils/colors.dart';

class ProductCard extends StatelessWidget {
  // product image (assets)
  final String productImage;

  // product name
  final String productName;

  // product price
  final String productPrice;

  // product category
  final String productCategory;

  const ProductCard(
      {super.key,
      required this.productImage,
      required this.productName,
      required this.productPrice,
      required this.productCategory});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 7,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  productImage,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 65,
                  height: 25,
                  decoration: const BoxDecoration(
                    borderRadius:  BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: Color(0xff383838),
                  ),
                  child: Center(
                    child: Text(
                      productCategory,
                      
                      style: const TextStyle(color: Colors.white, fontSize: 11),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: primaryColor.withOpacity(0.9),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        productName,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        productPrice,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
