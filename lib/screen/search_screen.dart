import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/common/font_resoure.dart';
import 'package:instagram_app/components/images/explore_image.dart';
import 'package:instagram_app/data/ergou_data.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: RQColor.metaWhite,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: media.width,
                height: 42,
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
                                const EdgeInsets.symmetric(vertical: 10)),
                      ),
                    )
                  ],
                ),
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: ErgouData.EXPLORE_POSTS.length,
                  gridDelegate: SliverQuiltedGridDelegate(
                    crossAxisCount: 3,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 3,
                    pattern: const [
                      QuiltedGridTile(2, 1),
                      QuiltedGridTile(2, 2),
                      QuiltedGridTile(1, 1),
                      QuiltedGridTile(1, 1),
                      QuiltedGridTile(1, 1),
                    ],
                  ),
                  itemBuilder: (context, index) {
                    return ExploreImage(post: ErgouData.EXPLORE_POSTS[index]);
                  })
            ],
          ),
        ),
      )),
    );
  }
}
