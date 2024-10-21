import 'package:flutter/material.dart';

class CardCategory extends StatefulWidget {
  const CardCategory({super.key});

  @override
  State<CardCategory> createState() => _CardproductState();
}

class _CardproductState extends State<CardCategory> {
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
                      Icons.category,
                      size: 50,
                    ),
                    Text("Category")
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