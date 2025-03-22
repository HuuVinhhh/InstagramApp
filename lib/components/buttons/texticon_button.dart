import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TexticonButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final String iconAsset;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  const TexticonButton(
      {super.key,
      required this.label,
      required this.onPressed,
      required this.iconAsset,
      required this.textColor,
      required this.fontSize,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(iconAsset),
          const SizedBox(
            width: 6,
          ),
          Text(
            label,
            style: TextStyle(
                fontSize: fontSize, color: textColor, fontWeight: fontWeight),
          )
        ],
      ),
    );
  }
}
