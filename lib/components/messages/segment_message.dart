import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/common/font_resoure.dart';
import 'package:instagram_app/objects/message_post.dart';

class SegmentMessage extends StatelessWidget {
  final MessagePost post;
  final VoidCallback? onPressed;
  const SegmentMessage({super.key, required this.post, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: RQColor.metaGrey, width: 0))),
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 44,
                height: 44,
                child: ClipOval(
                  child: Image.asset(
                    post.avatarPath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          post.username,
                          style: TextStyle(
                              color: RQColor.metaBlack,
                              fontSize: RQFont.fs12,
                              fontWeight: RQFont.fw500),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        SizedBox(
                          width: 16,
                          height: 16,
                          child: SvgPicture.asset(
                            'assets/icons/reactions/verified.svg',
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                    Text(
                      post.message,
                      style: TextStyle(
                          color: RQColor.metaBlack,
                          fontSize: RQFont.fs12,
                          fontWeight: RQFont.fw400),
                    )
                  ],
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 24,
                height: 24,
                child: SvgPicture.asset('assets/icons/appbar/camera.svg'),
              )
            ],
          ),
        ));
  }
}
