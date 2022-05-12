import 'package:flutter/material.dart';

import '../components/profile/profile_body.dart';
import '../components/profile/profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      color: const Color(0xffE3E5E5),
      child: Column(
        children: [
          const ProfileHeader(),
          const ProfileBody(),
        ],
      ),
    );
  }
}
