import 'package:flutter/material.dart';

class HomeProductCard extends StatefulWidget {
  const HomeProductCard({super.key});

  @override
  State<HomeProductCard> createState() => _HomeProductCardState();
}

class _HomeProductCardState extends State<HomeProductCard> {
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