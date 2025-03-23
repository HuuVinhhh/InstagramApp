import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/common/font_resoure.dart';

class StoryImage extends StatelessWidget {
  final String label;
  final String imagePath;
  final double width;
  final double height;
  const StoryImage(
      {super.key,
      required this.label,
      required this.imagePath,
      this.width = 56,
      this.height = 56});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipOval(
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/profile/oval.svg',
                  width: 64,
                  height: 64,
                ),
                ClipOval(
                  child: imagePath.contains('svg')
                      ? SvgPicture.asset(
                          imagePath,
                          width: width,
                          height: height,
                          fit: BoxFit.cover,
                        )
                      : Image.asset(
                          imagePath,
                          width: width,
                          height: height,
                          fit: BoxFit.cover,
                        ),
                )
              ],
            ),
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
    );
  }
}
