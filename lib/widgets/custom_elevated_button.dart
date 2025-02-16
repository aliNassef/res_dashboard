import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius = 12.0,
    this.padding = const EdgeInsets.symmetric(vertical: 20.0),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Add your onPressed logic here
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor, // Background color
        padding: padding, // Text padding
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius), // Border radius
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor, // Text color
          fontSize: 16.0, // Text size
        ),
      ),
    );
  }
}
