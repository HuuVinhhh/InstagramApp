import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/common/font_resoure.dart';
import 'package:instagram_app/components/buttons/rounded_button.dart';
import 'package:instagram_app/components/images/story_image.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RQColor.metaWhite,
      appBar: AppBar(
        backgroundColor: RQColor.metaWhite,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 6),
              child: SvgPicture.asset(
                'assets/icons/appbar/private.svg',
                width: 9,
                height: 12,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 6),
              child: Text(
                'anhnq.204',
                style: TextStyle(
                    color: RQColor.metaBlack,
                    fontSize: RQFont.fs16,
                    fontWeight: RQFont.fw500),
              ),
            ),
            SvgPicture.asset(
              'assets/icons/appbar/chevron_down.svg',
              width: 16,
              height: 16,
            )
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: 12),
              child: SvgPicture.asset(
                'assets/icons/appbar/menu.svg',
                width: 21,
                height: 18,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/profile/oval.svg',
                          width: 86,
                          height: 86,
                        ),
                        ClipOval(
                          child: Image.asset(
                            'assets/images/avatars/anhnq204.jpg',
                            width: 76,
                            height: 76,
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            '10',
                            style: TextStyle(
                                color: RQColor.metaBlack,
                                fontSize: RQFont.fs14,
                                fontWeight: RQFont.fw600),
                          ),
                          Text(
                            'posts',
                            style: TextStyle(
                                color: RQColor.metaBlack,
                                fontSize: RQFont.fs12),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '234',
                            style: TextStyle(
                                color: RQColor.metaBlack,
                                fontSize: RQFont.fs14,
                                fontWeight: RQFont.fw600),
                          ),
                          Text(
                            'followers',
                            style: TextStyle(
                                color: RQColor.metaBlack,
                                fontSize: RQFont.fs12),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '69',
                            style: TextStyle(
                                color: RQColor.metaBlack,
                                fontSize: RQFont.fs14,
                                fontWeight: RQFont.fw600),
                          ),
                          Text(
                            'following',
                            style: TextStyle(
                                color: RQColor.metaBlack,
                                fontSize: RQFont.fs12),
                          )
                        ],
                      ),
                    ],
                  ))
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Quoc Anh',
                        style: TextStyle(
                            color: RQColor.metaBlack,
                            fontSize: RQFont.fs14,
                            fontWeight: RQFont.fw500),
                      ),
                      Text(
                        '青山落日，秋月春风',
                        style: TextStyle(
                            color: RQColor.metaBlack,
                            fontSize: RQFont.fs12,
                            fontWeight: RQFont.fw400,
                            wordSpacing: 0.2),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              RoundedButton(
                label: 'Edit Profile',
                onPressed: () {},
                bgColor: RQColor.metaGrey,
                textColor: RQColor.metaBlack,
                fontSize: RQFont.fs13,
                fontWeight: RQFont.fw500,
                height: 29,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: RQColor.metaGrey, width: 1))),
                child: const Expanded(
                  child: Row(
                    children: [
                      StoryImage(
                        label: 'New',
                        imagePath: 'assets/icons/profile/add.svg',
                        width: 23,
                        height: 23,
                      ),
                      StoryImage(
                          label: 'Hongkong',
                          imagePath: 'assets/images/posts/hongkong.jpg'),
                      StoryImage(
                          label: 'Toys',
                          imagePath: 'assets/images/stories/batman.png')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
