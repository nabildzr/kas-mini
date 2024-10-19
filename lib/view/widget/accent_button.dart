import 'package:flutter/material.dart';
import 'package:kas_mini_flutter_app/utils/colors.dart';

class AccentButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const AccentButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 14 / 2,
    child: 
    ElevatedButton(
      // Set the action or function when this button is pressed
      onPressed: onPressed,
      // Button style
      style: ElevatedButton.styleFrom(
        foregroundColor: primaryColor,
        backgroundColor: Colors.white,
        side: BorderSide(color: primaryColor, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
      // Button text
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Text(
          text,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ),
    ));
  }
}
