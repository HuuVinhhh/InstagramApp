import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/components/posts/post_item.dart';
import 'package:instagram_app/components/stories/normal_story.dart';
import 'package:instagram_app/data/ergou_data.dart';
import 'package:instagram_app/objects/post_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Post> posts = ErgouData.HOME_POSTS;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: RQColor.metaWhite,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: RQColor.metaGrey,
          leadingWidth: 36,
          leading: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: SvgPicture.asset(
              'assets/icons/appbar/camera.svg',
              width: 24,
              height: 24,
            ),
          ),
          centerTitle: true,
          title: SizedBox(
            width: 105,
            height: 28,
            child: SvgPicture.asset(
              'assets/icons/logo/logo.svg',
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/notifications');
              },
              child: Container(
                margin: const EdgeInsets.only(right: 12),
                child: SvgPicture.asset(
                  'assets/icons/appbar/like.svg',
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/messages');
              },
              child: Container(
                margin: const EdgeInsets.only(right: 12),
                child: SvgPicture.asset(
                  'assets/icons/appbar/share.svg',
                  width: 24,
                  height: 24,
                ),
              ),
            )
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: BoxDecoration(
                        border: Border.symmetric(
                            horizontal:
                                BorderSide(color: RQColor.metaGrey, width: 1))),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(ErgouData.STORY_POSTS.length,
                            (index) {
                          return NormalStory(
                              post: ErgouData.STORY_POSTS[index]);
                        }),
                      ),
                    ),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: ErgouData.HOME_POSTS.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return PostItem(post: ErgouData.HOME_POSTS[index]);
                      })
                ],
              ),
            ),
          ),
        ));
  }
}
