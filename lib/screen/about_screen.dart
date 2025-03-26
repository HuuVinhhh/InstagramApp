import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/common/font_resoure.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
          'About us',
          style: TextStyle(
              color: RQColor.metaBlack,
              fontSize: RQFont.fs12,
              fontWeight: RQFont.fw500),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: SizedBox(
                    width: 120,
                    height: 120,
                    child: Image.asset(
                      'assets/images/avatars/anhnq204.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    'Ngo Quoc Anh - 22014051',
                    style: TextStyle(
                        color: RQColor.metaBlack,
                        fontSize: RQFont.fs12,
                        fontWeight: RQFont.fw400),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: SizedBox(
                    width: 120,
                    height: 120,
                    child: Image.asset(
                      'assets/images/avatars/huuvinh.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    'Nguyen Huu Vinh - 22010283',
                    style: TextStyle(
                        color: RQColor.metaBlack,
                        fontSize: RQFont.fs12,
                        fontWeight: RQFont.fw400),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
