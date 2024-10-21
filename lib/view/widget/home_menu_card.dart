import 'package:flutter/material.dart';

class CardMenu extends StatefulWidget {
  const CardMenu({super.key});

  @override
  State<CardMenu> createState() => _CardproductState();
}

class _CardproductState extends State<CardMenu> {
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
                      Icons.menu_open_rounded,
                      size: 50,
                    ),
                    Text("Menu")
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