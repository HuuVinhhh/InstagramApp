import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/common/font_resoure.dart';
import 'package:instagram_app/components/buttons/rounded_button.dart';
import 'package:instagram_app/components/buttons/segment_button.dart';

class PostScreen extends StatefulWidget {
  final File file;
  const PostScreen({super.key, required this.file});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RQColor.metaWhite,
      appBar: AppBar(
        backgroundColor: RQColor.metaGrey,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 12),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/icons/appbar/chevron_left.svg',
              width: 24,
              height: 24,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'New post',
          style: TextStyle(
              color: RQColor.metaBlack,
              fontSize: RQFont.fs14,
              fontWeight: RQFont.fw500),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 220,
                          height: 220,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: FileImage(widget.file),
                                  fit: BoxFit.cover)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      height: 80,
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: 'Add a caption...',
                            hintStyle: TextStyle(
                                color: RQColor.metaBlack40,
                                fontSize: RQFont.fs11,
                                fontWeight: RQFont.fw400)),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const SegmentButton(
                      label: 'Tag people',
                      iconPath: 'assets/icons/appbar/tag.svg',
                    ),
                    const SegmentButton(
                        label: 'Add music',
                        iconPath: 'assets/icons/appbar/music.svg'),
                    const SegmentButton(
                        label: 'Audience',
                        iconPath: 'assets/icons/appbar/audience.svg')
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: RoundedButton(
                  label: 'Share',
                  onPressed: () {},
                  bgColor: RQColor.metaBlue,
                  textColor: RQColor.metaWhite,
                  fontSize: RQFont.fs14,
                  fontWeight: RQFont.fw500),
            )
          ],
        ),
      )),
    );
  }
}
