import 'package:flutter/material.dart';
import 'package:kas_mini_flutter_app/utils/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PrimaryButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 16 / 2,
    child: 
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
        ),
        backgroundColor: primaryColor
      ),
      onPressed: onPressed, child: Text(text, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
    ));
  }
}