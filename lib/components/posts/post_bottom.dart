import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/common/font_resoure.dart';

class PostBottom extends StatelessWidget {
  final String username;
  final String caption;
  const PostBottom({super.key, required this.username, required this.caption});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      color: RQColor.metaWhite,
      child: Column(
        children: [
          const SizedBox(
            height: 14,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 14),
                child: SvgPicture.asset(
                  'assets/icons/reactions/like.svg',
                  width: 24,
                  height: 24,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 14),
                child: SvgPicture.asset(
                  'assets/icons/reactions/comment.svg',
                  width: 24,
                  height: 24,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 14),
                child: SvgPicture.asset(
                  'assets/icons/reactions/share.svg',
                  width: 24,
                  height: 24,
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(right: 14),
                child: SvgPicture.asset(
                  'assets/icons/reactions/save.svg',
                  width: 24,
                  height: 24,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 14),
                child: Text(
                  username,
                  style: TextStyle(
                      color: RQColor.metaBlack,
                      fontSize: RQFont.fs13,
                      fontWeight: RQFont.fw500),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 4),
                child: Text(
                  caption,
                  style: TextStyle(
                      color: RQColor.metaBlack,
                      fontSize: RQFont.fs13,
                      fontWeight: RQFont.fw400),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 14),
                child: Text(
                  'January 23',
                  style: TextStyle(
                      color: RQColor.metaBlack40,
                      fontSize: RQFont.fs11,
                      fontWeight: RQFont.fw400),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          )
        ],
      ),
    );
  }
}
