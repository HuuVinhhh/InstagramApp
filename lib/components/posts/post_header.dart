import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/common/font_resoure.dart';

class PostHeader extends StatelessWidget {
  final String username;
  final String location;
  final String avatarURL;
  const PostHeader(
      {super.key,
      required this.username,
      required this.location,
      required this.avatarURL});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 54,
      color: RQColor.metaWhite,
      child: Center(
        child: ListTile(
          leading: ClipOval(
              child: SizedBox(
            width: 32,
            height: 32,
            child: Image.asset(avatarURL),
          )),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    username,
                    style: TextStyle(
                        color: RQColor.metaBlack,
                        fontSize: RQFont.fs13,
                        fontWeight: RQFont.fw500,
                        height: 1.1),
                  ),
                  SvgPicture.asset(
                    'assets/icons/reactions/verified.svg',
                    width: 16,
                    height: 16,
                  )
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                location,
                style: TextStyle(
                    color: RQColor.metaBlack,
                    fontSize: RQFont.fs11,
                    fontWeight: RQFont.fw400),
              )
            ],
          ),
          trailing: SvgPicture.asset(
            'assets/icons/reactions/options.svg',
            width: 24,
          ),
        ),
      ),
    );
  }
}
