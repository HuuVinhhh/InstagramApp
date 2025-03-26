import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_app/components/buttons/reaction_button.dart';
import 'package:instagram_app/components/reels/reel_user.dart';
import 'package:instagram_app/objects/reel_post.dart';
import 'package:video_player/video_player.dart';

class ReelItem extends StatefulWidget {
  final ReelPost post;
  const ReelItem({super.key, required this.post});

  @override
  State<ReelItem> createState() => _ReelItemState();
}

class _ReelItemState extends State<ReelItem> {
  late VideoPlayerController controller;
  double? aspectRatio;
  late Completer<void> _videoLoaded;

  @override
  void initState() {
    super.initState();
    _videoLoaded = Completer<void>();
    _videoLoading();
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.sizeOf(context);
    if (!_videoLoaded.isCompleted) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return GestureDetector(
      onTap: () {
        setState(() {
          if (controller.value.isPlaying) {
            controller.pause();
            return;
          }
          controller.play();
        });
      },
      child: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.transparent,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Center(
              child: SizedBox(
                width: media.width,
                height: media.width / aspectRatio!,
                child: VideoPlayer(controller),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Column(
                children: [
                  Container(
                    width: 56,
                    height: 291,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          child: const ReactionButton(
                              iconPath: 'assets/icons/reels/like.svg'),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 32,
                            height: 32,
                            margin: const EdgeInsets.only(bottom: 12),
                            child: SvgPicture.asset(
                                'assets/icons/reels/comment.svg'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 32,
                            height: 32,
                            margin: const EdgeInsets.only(bottom: 12),
                            child: SvgPicture.asset(
                                'assets/icons/reels/share.svg'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 32,
                            height: 32,
                            margin: const EdgeInsets.only(bottom: 12),
                            child:
                                SvgPicture.asset('assets/icons/reels/more.svg'),
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                left: 12,
                child: ReelUser(
                    username: widget.post.username,
                    caption: widget.post.caption,
                    avatarPath: widget.post.avatarPath))
          ],
        ),
      ),
    );
  }

  void _videoLoading() {
    controller =
        VideoPlayerController.networkUrl(Uri.parse(widget.post.videoUrl))
          ..initialize().then((_) {
            setState(() {
              controller.setLooping(true);
              controller.setVolume(0.5);
              controller.play();
              aspectRatio = controller.value.size.aspectRatio;
            });
            if (!_videoLoaded.isCompleted) {
              _videoLoaded.complete();
            }
          });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
