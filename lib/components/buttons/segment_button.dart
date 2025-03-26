import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/common/font_resoure.dart';

class SegmentButton extends StatelessWidget {
  final String label;
  final String iconPath;
  final bool bordered;
  final VoidCallback? onPressed;
  const SegmentButton(
      {super.key,
      required this.label,
      required this.iconPath,
      this.bordered = true,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
            border: Border.symmetric(
                horizontal: bordered
                    ? BorderSide(color: RQColor.metaBlack10, width: 0)
                    : BorderSide.none)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(iconPath, width: 24, height: 24),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  label,
                  style: TextStyle(
                      color: RQColor.metaBlack,
                      fontSize: RQFont.fs13,
                      fontWeight: RQFont.fw400),
                )
              ],
            ),
            SvgPicture.asset(
              'assets/icons/appbar/chevron_right.svg',
              width: 24,
              height: 24,
            )
          ],
        ),
      ),
    );
  }
}
