import 'package:flutter/material.dart';

import 'profile_body.dart';
import 'profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Column(
        children: const [
          ProfileHeader(),
          SizedBox(height: 25.0),
          ProfileBody(),
        ],
      ),
    );
  }
}
