import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/screen/home_screen.dart';
import 'package:instagram_app/screen/profile_screen.dart';
import 'package:instagram_app/screen/reels_screen.dart';
import 'package:instagram_app/screen/search_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;
  PageStorageBucket pageStorageBucket = PageStorageBucket();
  Widget _currentTabView = const HomeScreen();

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: RQColor.metaWhite,
      body: Stack(
        children: [
          PageStorage(bucket: pageStorageBucket, child: _currentTabView),
          SafeArea(
              child: Column(
            children: [
              const Spacer(),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: media.width,
                        height: 50,
                        color: RQColor.metaGrey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _currentIndex = 0;
                                _currentTabView = const HomeScreen();
                              });
                            },
                            icon: SvgPicture.asset(
                              _currentIndex == 0
                                  ? 'assets/icons/navbar/home_selected.svg'
                                  : 'assets/icons/navbar/home.svg',
                              width: 24,
                              height: 24,
                            ),
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _currentIndex = 1;
                                _currentTabView = const SearchScreen();
                              });
                            },
                            icon: SvgPicture.asset(
                              _currentIndex == 1
                                  ? 'assets/icons/navbar/search_selected.svg'
                                  : 'assets/icons/navbar/search.svg',
                              width: 24,
                              height: 24,
                            ),
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _currentIndex = 2;
                                _currentTabView = const ReelsScreen();
                              });
                            },
                            icon: SvgPicture.asset(
                              _currentIndex == 2
                                  ? 'assets/icons/navbar/reels_selected.svg'
                                  : 'assets/icons/navbar/reels.svg',
                              width: 24,
                              height: 24,
                            ),
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _currentIndex = 3;
                                _currentTabView = const ProfileScreen();
                              });
                            },
                            icon: SvgPicture.asset(
                              _currentIndex == 3
                                  ? 'assets/icons/navbar/profile_selected.svg'
                                  : 'assets/icons/navbar/profile.svg',
                              width: 24,
                              height: 24,
                            ),
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                          )
                        ],
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/create');
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      child: SvgPicture.asset(
                        'assets/icons/navbar/create.svg',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
