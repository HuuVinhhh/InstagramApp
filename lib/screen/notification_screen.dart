import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/common/font_resoure.dart';
import 'package:instagram_app/components/notification/segment_noti.dart';
import 'package:instagram_app/data/ergou_data.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
        title: Text(
          'Notifications',
          style: TextStyle(
              color: RQColor.metaBlack,
              fontSize: RQFont.fs12,
              fontWeight: RQFont.fw500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return SegmentNoti(post: ErgouData.NOTI_POSTS[index]);
                })
          ],
        ),
      ),
    );
  }
}
