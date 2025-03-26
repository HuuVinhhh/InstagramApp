import 'package:flutter/material.dart';
import 'package:instagram_app/components/posts/post_bottom.dart';
import 'package:instagram_app/components/posts/post_header.dart';
import 'package:instagram_app/components/posts/post_slider.dart';
import 'package:instagram_app/objects/post_home.dart';

class PostItem extends StatelessWidget {
  final Post post;
  const PostItem({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostHeader(
          username: post.username,
          location: post.location,
          avatarURL: post.avatarURL,
        ),
        PostSlider(imageURL: post.imageURL),
        PostBottom(
          username: post.username,
          caption: post.caption,
        )
      ],
    );
  }
}
