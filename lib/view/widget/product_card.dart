import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: Center(
          child: SizedBox(
            height: 158,
            width: 158,
            child: Card(
              elevation: 16,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.propane_outlined,
                      size: 50,
                    ),
                    Text("Product")
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}