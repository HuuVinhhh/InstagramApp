import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TabButton extends StatelessWidget {
  final String labelPath;
  const TabButton({super.key, required this.labelPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SvgPicture.asset(
        labelPath,
        width: 24,
        height: 24,
      ),
    );
  }
}
