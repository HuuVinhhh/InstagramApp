import 'dart:async';

import 'package:flutter/material.dart';

class PostSlider extends StatefulWidget {
  final String imageURL;
  const PostSlider({super.key, required this.imageURL});

  @override
  State<PostSlider> createState() => _PostSliderState();
}

class _PostSliderState extends State<PostSlider> {
  double? imageWidth;
  double? imageHeight;
  late Completer<void> _imageLoaded;
  @override
  void initState() {
    super.initState();
    _imageLoaded = Completer<void>();
    _imageResolution();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (imageHeight == null || imageWidth == null) {
      _imageResolution();
    }
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.sizeOf(context);
    return FutureBuilder<void>(
      future: _imageLoaded.future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return SizedBox(
          width: media.width,
          height: media.width / (imageWidth! / imageHeight!),
          child: Image.asset(
            widget.imageURL,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }

  // image resolution
  void _imageResolution() {
    final Image image = Image.asset(widget.imageURL);
    final ImageStream stream = image.image.resolve(const ImageConfiguration());

    stream.addListener(ImageStreamListener((ImageInfo info, bool _) {
      final int height = info.image.height;
      final int width = info.image.width;

      setState(() {
        imageHeight = height.toDouble();
        imageWidth = width.toDouble();
      });

      if (!_imageLoaded.isCompleted) {
        _imageLoaded.complete();
      }
    }));
  }
}
