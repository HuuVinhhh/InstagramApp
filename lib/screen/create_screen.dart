import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_app/common/color_resource.dart';
import 'package:instagram_app/common/font_resoure.dart';
import 'package:instagram_app/screen/post_screen.dart';
import 'package:photo_manager/photo_manager.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final List<Widget> _mediaList = [];
  final List<File> path = [];
  File? _file;
  int currentPage = 0;
  int? lastPage;

  Future<void> _fetchNewMedia() async {
    lastPage = currentPage;
    final PermissionState permission =
        await PhotoManager.requestPermissionExtend();
    if (permission.isAuth) {
      List<AssetPathEntity> photoAlbum =
          await PhotoManager.getAssetPathList(type: RequestType.image);
      List<AssetEntity> media =
          await photoAlbum[0].getAssetListPaged(page: currentPage, size: 60);

      for (var asset in media) {
        if (asset.type == AssetType.image) {
          final file = await asset.file;
          if (file != null) {
            path.add(File(file.path));
            _file = path[0];
          }
        }
      }
      List<Widget> temp = [];
      for (var asset in media) {
        temp.add(
          FutureBuilder(
            future: asset.thumbnailDataWithSize(const ThumbnailSize(200, 200)),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                // ignore: avoid_unnecessary_containers
                return Container(
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.memory(
                          snapshot.data!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                );
              }

              return Container();
            },
          ),
        );
      }
      setState(() {
        _mediaList.addAll(temp);
        currentPage++;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchNewMedia();
  }

  int _mediaIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RQColor.metaWhite,
      appBar: AppBar(
        backgroundColor: RQColor.metaWhite,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 12),
            alignment: Alignment.center,
            child: Text(
              'Back',
              style: TextStyle(
                  color: RQColor.metaBlack,
                  fontSize: RQFont.fs16,
                  fontWeight: RQFont.fw400),
            ),
          ),
        ),
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Recents',
              style: TextStyle(
                  color: RQColor.metaBlack,
                  fontSize: RQFont.fs16,
                  fontWeight: RQFont.fw500),
            ),
            const SizedBox(
              width: 2,
            ),
            SvgPicture.asset(
              'assets/icons/appbar/chevron_down.svg',
              width: 16,
              height: 16,
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PostScreen(file: _file!)));
            },
            child: Container(
              margin: const EdgeInsets.only(right: 12),
              child: Text(
                'Next',
                style: TextStyle(
                    color: RQColor.metaBlue40,
                    fontSize: RQFont.fs16,
                    fontWeight: RQFont.fw500),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 375,
                child: GridView.builder(
                    itemCount: _mediaList.isEmpty ? _mediaList.length : 1,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisSpacing: 1,
                            crossAxisSpacing: 1),
                    itemBuilder: (context, index) {
                      return _mediaList[_mediaIndex];
                    }),
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _mediaList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 2),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _mediaIndex = index;
                          _file = path[index];
                        });
                      },
                      child: _mediaList[index],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
