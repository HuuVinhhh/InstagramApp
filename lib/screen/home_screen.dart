import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/common/font_resoure.dart';
import 'package:instagram_app/components/posts/post_item.dart';
import 'package:instagram_app/objects/post.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Post> posts = [
    Post(
        username: 'anhnq.204',
        caption: 'hongkong by night',
        location: 'Hongkong',
        imageURL: 'assets/images/posts/hongkong.jpg',
        avatarURL: 'assets/images/avatars/anhnq204.jpg'),
    Post(
        username: 'xxxibgdrgn',
        caption: 'vogue korea',
        location: 'Seoul, Korea',
        imageURL: 'assets/images/posts/gd.jpg',
        avatarURL: 'assets/images/avatars/xxxibgdrgn.jpg'),
    Post(
        username: 'justinbieber',
        caption: 'golfffff',
        location: 'Hawaii, US',
        imageURL: 'assets/images/posts/justinbieber.jpg',
        avatarURL: 'assets/images/avatars/justinbieber.jpg'),
    Post(
        username: 'yifei_cc',
        caption: 'sweetieee',
        location: 'Beijing, China',
        imageURL: 'assets/images/posts/yifei.jpg',
        avatarURL: 'assets/images/avatars/yifei_cc.jpg'),
  ];
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
            Container(
              margin: const EdgeInsets.only(right: 12),
              child: SvgPicture.asset(
                'assets/icons/appbar/like.svg',
                width: 24,
                height: 24,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 12),
              child: SvgPicture.asset(
                'assets/icons/appbar/share.svg',
                width: 24,
                height: 24,
              ),
            )
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Column(
                children: List.generate(
                  4,
                  (index) => PostItem(post: posts[index]),
                ),
              ),
            ),
          ),
        ));
  }
}
