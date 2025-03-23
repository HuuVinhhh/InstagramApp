import 'package:flutter/material.dart';

class PostSlider extends StatelessWidget {
  final String imageURL;
  const PostSlider({super.key, required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375,
      height: 375,
      child: Image.asset(
        imageURL,
        fit: BoxFit.cover,
      ),
    );
  }
}
