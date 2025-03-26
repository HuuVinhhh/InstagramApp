import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/common/font_resoure.dart';
import 'package:instagram_app/components/messages/segment_message.dart';
import 'package:instagram_app/data/ergou_data.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RQColor.metaWhite,
      appBar: AppBar(
        backgroundColor: RQColor.metaGrey,
        leadingWidth: 32,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            margin: const EdgeInsets.only(left: 12),
            child: SvgPicture.asset(
              'assets/icons/appbar/chevron_left.svg',
              width: 16,
              height: 16,
            ),
          ),
        ),
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 6),
              child: Text(
                'anhnq.204',
                style: TextStyle(
                    color: RQColor.metaBlack,
                    fontSize: RQFont.fs13,
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
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: 12),
              width: 20,
              height: 20,
              child: SvgPicture.asset(
                'assets/icons/appbar/add.svg',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.maxFinite,
              height: 46,
              margin: const EdgeInsets.symmetric(horizontal: 12),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: RQColor.metaGrey),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    child: SvgPicture.asset(
                      'assets/icons/appbar/search.svg',
                      width: 16,
                      height: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Expanded(
                    child: TextField(
                      cursorColor: RQColor.metaBlack40,
                      cursorHeight: 13,
                      decoration: InputDecoration(
                          errorBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: TextStyle(
                              color: RQColor.metaBlack40,
                              fontSize: RQFont.fs13,
                              fontWeight: RQFont.fw400),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 11)),
                    ),
                  )
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: ErgouData.MESSAGE_POSTS.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return SegmentMessage(post: ErgouData.MESSAGE_POSTS[index]);
                }),
          ],
        ),
      ),
    );
  }
}
