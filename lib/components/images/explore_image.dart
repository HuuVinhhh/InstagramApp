import 'package:flutter/material.dart';
import 'package:instagram_app/objects/explore_post.dart';

class ExploreImage extends StatelessWidget {
  final ExplorePost post;
  final VoidCallback? onPressed;
  const ExploreImage({super.key, required this.post, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Image.network(
        post.imageURL,
        fit: BoxFit.cover,
      ),
    );
  }
}
