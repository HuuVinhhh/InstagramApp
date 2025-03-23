import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/common/font_resoure.dart';

class SegmentButton extends StatelessWidget {
  final String label;
  final String iconPath;
  const SegmentButton({super.key, required this.label, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(color: RQColor.metaBlack10, width: 1))),
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
                    fontSize: RQFont.fs12,
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
    );
  }
}
