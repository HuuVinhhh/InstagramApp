import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/common/font_resoure.dart';
import 'package:instagram_app/components/buttons/rounded_button.dart';
import 'package:instagram_app/components/buttons/tab_button.dart';
import 'package:instagram_app/components/images/story_image.dart';
import 'package:instagram_app/data/ergou_data.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.sizeOf(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
              SizedBox(
                width: 16,
                height: 16,
                child: SvgPicture.asset(
                  'assets/icons/appbar/chevron_down.svg',
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
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
            child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
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
              ),
              const SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
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
              ),
              const SizedBox(
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: RoundedButton(
                  label: 'Edit Profile',
                  onPressed: () {},
                  bgColor: RQColor.metaGrey,
                  textColor: RQColor.metaBlack,
                  fontSize: RQFont.fs13,
                  fontWeight: RQFont.fw500,
                  height: 29,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: RQColor.metaBlack10, width: 1))),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            StoryImage(
                              label: 'New',
                              imagePath: 'assets/icons/profile/add.svg',
                              width: 16,
                              height: 16,
                            ),
                            StoryImage(
                                label: 'Hongkong',
                                imagePath: 'assets/images/posts/hongkong.jpg'),
                            StoryImage(
                                label: 'Toys',
                                imagePath: 'assets/images/stories/batman.png'),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: media.width,
                height: 44,
                child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: RQColor.metaBlack,
                    overlayColor:
                        const WidgetStatePropertyAll(Colors.transparent),
                    tabs: const [
                      TabButton(labelPath: 'assets/icons/profile/grid.svg'),
                      TabButton(labelPath: 'assets/icons/profile/tag.svg')
                    ]),
              ),
              const SizedBox(
                height: 2,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: ErgouData.PROFILE_POSTS.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        width: (media.width - 24) / 3,
                        height: (media.width - 24) / 3,
                        child: Image.asset(
                          ErgouData.PROFILE_POSTS[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
