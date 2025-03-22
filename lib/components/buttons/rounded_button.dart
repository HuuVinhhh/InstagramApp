import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color bgColor;
  final Color textColor;
  final double width;
  final double height;
  final double fontSize;
  final FontWeight fontWeight;
  const RoundedButton(
      {super.key,
      required this.label,
      required this.onPressed,
      required this.bgColor,
      required this.textColor,
      required this.fontSize,
      required this.fontWeight,
      this.width = double.maxFinite,
      this.height = 44});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          label,
          style: TextStyle(
              fontSize: fontSize, fontWeight: fontWeight, color: textColor),
        ),
      ),
    );
  }
}
