import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final String label;
  final Color textColor;
  final VoidCallback onPressed;
  final double fontSize;
  final FontWeight fontWeight;
  const LinkButton(
      {super.key,
      required this.label,
      required this.onPressed,
      required this.textColor,
      required this.fontSize,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        label,
        style: TextStyle(
            color: textColor, fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }
}
