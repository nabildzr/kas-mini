import 'package:flutter/material.dart';

class Cardproduct extends StatefulWidget {
  const Cardproduct({super.key});

  @override
  State<Cardproduct> createState() => _CardproductState();
}

class _CardproductState extends State<Cardproduct> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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