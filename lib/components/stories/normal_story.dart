import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/common/font_resoure.dart';
import 'package:instagram_app/objects/story_post.dart';

class NormalStory extends StatelessWidget {
  final StoryPost post;
  final VoidCallback? onPressed;
  const NormalStory({super.key, required this.post, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        width: 62,
        height: 81,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 62,
                  height: 62,
                  child: SvgPicture.asset(
                    'assets/icons/avatar/story.svg',
                    fit: BoxFit.cover,
                  ),
                ),
                ClipOval(
                  child: SizedBox(
                    width: 56,
                    height: 56,
                    child: Image.asset(
                      post.avatarPath,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    post.username,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: RQColor.metaBlack,
                        fontSize: RQFont.fs12,
                        fontWeight: RQFont.fw400,
                        wordSpacing: 0.3),
                  ),
                ),
                post.badge
                    ? SizedBox(
                        width: 16,
                        height: 16,
                        child: SvgPicture.asset(
                          'assets/icons/reactions/verified.svg',
                          fit: BoxFit.cover,
                        ),
                      )
                    : const SizedBox(
                        height: 1,
                        width: 0,
                      )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
