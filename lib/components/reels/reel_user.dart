import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/common/font_resoure.dart';
import 'package:instagram_app/components/buttons/rounded_button.dart';

class ReelUser extends StatelessWidget {
  final String avatarPath;
  final String username;
  final String caption;
  const ReelUser(
      {super.key,
      required this.username,
      required this.caption,
      required this.avatarPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 8),
          height: 42,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipOval(
                child: SizedBox(
                  width: 34,
                  height: 34,
                  child: Image.asset(avatarPath),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                username,
                style: TextStyle(
                    color: RQColor.metaGrey,
                    fontSize: RQFont.fs12,
                    fontWeight: RQFont.fw500),
              ),
              const SizedBox(
                width: 2,
              ),
              SizedBox(
                width: 16,
                height: 16,
                child: SvgPicture.asset('assets/icons/reactions/verified.svg'),
              ),
              const SizedBox(
                width: 8,
              ),
              RoundedButton(
                label: 'Follow',
                onPressed: () {},
                bgColor: RQColor.metaGrey01,
                textColor: RQColor.metaWhite,
                fontSize: RQFont.fs12,
                fontWeight: RQFont.fw500,
                width: 54,
                height: 28,
              )
            ],
          ),
        ),
        Container(
            margin: const EdgeInsets.only(bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  caption,
                  style: TextStyle(
                      color: RQColor.metaGrey,
                      fontSize: RQFont.fs11,
                      fontWeight: RQFont.fw400),
                )
              ],
            ))
      ],
    );
  }
}
