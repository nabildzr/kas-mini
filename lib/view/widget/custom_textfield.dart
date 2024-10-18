import 'package:flutter/material.dart';
import 'package:kas_mini_flutter_app/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  //:: USAGE?
  // null can be used if the variable type has (?)

  // IF WANT USE prefixIcon || hintText
  //  CustomTextField(
  //   obscureText: false,
  //   height: 50.0,
  //   hintText: 'Email',
  //   prefixIcon: Icon(Icons.email_outlined),
  //  )

  // IF DON'T WANT TO USE prefixIcon || hintText
  //  CustomTextField(
  //   obscureText: false,
  //   height: 50.0,
  //   hintText: null,
  //   prefixIcon: null,
  //  )

  // Customize the height of the TextField
  final double height;

  // prefixIcon for the TextField
  // Icon? means that the value can be an Icon or null

  //? note: If the TextField wants to use an Icon then just use the Widget Icon as usual in the prefixIcon argument, then if you don't want to use the prefixIcon then type null in the prefixIcon argument

  final Icon? prefixIcon;

  // hintText (placeholder) for the TextField
  final String? hintText;

  // boolean to determine whether the input text is obscured or not
  final bool obscureText;

    final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.obscureText,
    required this.height,
    required this.hintText,
    required this.prefixIcon, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Customize the size of the TextField
      // with double.infinity that will make the
      // TextField fill the width of the screen
      width: double.infinity,
      height: height,
      // Create a TextField

      child: TextField(
        controller: controller,
        // Decoration for the TextField
        decoration: InputDecoration(
          // filled must be true to fill the TextField with fillColor
          filled: true,
          fillColor: Colors.grey[200],

          // Add a hint text (placeholder)
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 17),

          prefixIcon: prefixIcon,

          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              // set border to none
              borderSide: BorderSide.none),

          // If the Input is focused (clicked), the border color and border radius will change
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              // this color is from /utils/colors.dart
              color: primaryColor,
            ),
          ),
        ),
        // secure the text input
        obscureText: obscureText,
      ),
    );
  }
}
