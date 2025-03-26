import 'package:flutter/material.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/components/reels/reel_item.dart';
import 'package:instagram_app/data/ergou_data.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({super.key});

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RQColor.metaBlack,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(bottom: 50.0),
        child: PageView.builder(
            itemCount: ErgouData.REEL_POSTS.length,
            scrollDirection: Axis.vertical,
            controller: PageController(initialPage: 0, viewportFraction: 1),
            itemBuilder: (context, index) {
              return ReelItem(post: ErgouData.REEL_POSTS[index]);
            }),
      )),
    );
  }
}
