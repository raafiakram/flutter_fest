import 'package:flutter/material.dart';

class AppBigButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onTap;

  const AppBigButton({
    super.key,
    required this.buttonName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: screenHeight * .029),
        width: screenWidth * .859,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.inversePrimary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
              fontSize: screenHeight * .024,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
