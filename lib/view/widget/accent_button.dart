import 'package:flutter/material.dart';

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
    return ElevatedButton(
      // Set the action or function when this button is pressed
      onPressed: onPressed,
      // Button style
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.purple[200],
        backgroundColor: Colors.white,
        side: BorderSide(color: Colors.purple[200]!, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
      // Button text
      child: Text(
        text,
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
    );
  }
}