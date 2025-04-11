import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final bool obscureText;
  final double hintSize;
  final TextEditingController controller;
  const AppTextField({
    super.key,
    required this.hint,
    required this.hintSize,
    this.obscureText = false,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: hintSize,
            color: Theme.of(context).colorScheme.primary,
          ),
          fillColor: Theme.of(context).colorScheme.secondary,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
        ),
      ),
    );
  }
}
