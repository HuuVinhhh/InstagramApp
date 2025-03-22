import 'package:flutter/material.dart';

class RoundedTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final double width;
  final double height;
  final Color bgColor;
  final Color borderColor;
  final Color textColor;
  final bool obscureText;
  const RoundedTextfield(
      {super.key,
      required this.controller,
      required this.label,
      required this.bgColor,
      required this.borderColor,
      required this.textColor,
      this.width = double.maxFinite,
      this.height = 44,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: width,
          height: height,
          decoration: BoxDecoration(
              border: Border.all(color: borderColor, width: 1),
              color: bgColor,
              borderRadius: BorderRadius.circular(5)),
          child: TextField(
            obscureText: obscureText,
            style: TextStyle(
                fontSize: 12, color: textColor, fontWeight: FontWeight.w400),
            controller: controller,
            decoration: InputDecoration(
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              border: InputBorder.none,
              hintText: label,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
            ),
          ),
        ),
      ],
    );
  }
}
