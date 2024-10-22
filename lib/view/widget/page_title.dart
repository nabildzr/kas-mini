import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  final String title;

  const PageTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(
        bottom: 6,
        right: 6,
        left: 6,
        top: 6,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
