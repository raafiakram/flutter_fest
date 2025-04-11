import 'package:flutter/material.dart';

class AppBigIcon extends StatelessWidget {
  final String iconPath;
  final VoidCallback onTap;

  const AppBigIcon({super.key, required this.iconPath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(screenHeight * .022),
        child: Image.asset(iconPath, height: 40),
      ),
    );
  }
}
