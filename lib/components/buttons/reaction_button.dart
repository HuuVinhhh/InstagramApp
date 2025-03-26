import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReactionButton extends StatefulWidget {
  final String iconPath;
  final String? label;
  final double width;
  final double height;
  const ReactionButton(
      {super.key,
      required this.iconPath,
      this.label,
      this.width = 32,
      this.height = 32});

  @override
  State<ReactionButton> createState() => _ReactionButtonState();
}

class _ReactionButtonState extends State<ReactionButton> {
  late ValueNotifier<String> _currentIconPath;

  @override
  void initState() {
    super.initState();
    _currentIconPath = ValueNotifier<String>(widget.iconPath);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_currentIconPath.value == widget.iconPath) {
          _currentIconPath.value =
              widget.iconPath.replaceAll('.svg', '_selected.svg');
          return;
        }
        _currentIconPath.value = widget.iconPath;
      },
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: ValueListenableBuilder(
            valueListenable: _currentIconPath,
            builder: (context, path, child) {
              return SvgPicture.asset(path);
            }),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _currentIconPath.dispose();
  }
}
