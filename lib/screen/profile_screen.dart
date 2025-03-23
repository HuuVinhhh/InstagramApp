import 'package:flutter/material.dart';
import 'package:instagram_app/common/color_resource.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RQColor.metaWhite,
      body: SafeArea(child: Text('profile')),
    );
  }
}
