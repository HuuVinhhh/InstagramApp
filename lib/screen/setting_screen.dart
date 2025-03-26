import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/common/font_resoure.dart';
import 'package:instagram_app/components/buttons/link_button.dart';
import 'package:instagram_app/components/buttons/segment_button.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.sizeOf(context);
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
          'Settings and activity',
          style: TextStyle(
              color: RQColor.metaBlack,
              fontSize: RQFont.fs12,
              fontWeight: RQFont.fw500),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              width: media.width,
              height: 32,
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
                              const EdgeInsets.symmetric(vertical: 9)),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SegmentButton(
                    label: 'Account center',
                    iconPath: 'assets/icons/settings/account.svg',
                    bordered: false,
                  ),
                  const SegmentButton(
                    label: 'Saved',
                    iconPath: 'assets/icons/settings/save.svg',
                    bordered: false,
                  ),
                  const SegmentButton(
                    label: 'Archive',
                    iconPath: 'assets/icons/settings/archive.svg',
                    bordered: false,
                  ),
                  const SegmentButton(
                    label: 'Your activity',
                    iconPath: 'assets/icons/settings/activity.svg',
                    bordered: false,
                  ),
                  const SegmentButton(
                    label: 'Notifications',
                    iconPath: 'assets/icons/settings/noti.svg',
                    bordered: false,
                  ),
                  const SegmentButton(
                    label: 'Close friends',
                    iconPath: 'assets/icons/settings/close.svg',
                    bordered: false,
                  ),
                  SegmentButton(
                    label: 'About us',
                    iconPath: 'assets/icons/settings/about.svg',
                    bordered: false,
                    onPressed: () {
                      Navigator.pushNamed(context, '/about-us');
                    },
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: LinkButton(
                        label: 'Sign out',
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        textColor: const Color.fromRGBO(0xff, 0x00, 0x34, 1.0),
                        fontSize: RQFont.fs13,
                        fontWeight: RQFont.fw400),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
