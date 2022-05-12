import 'package:flutter/material.dart';

import 'profile_menu_item.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: const [
          ProfileMenuItem(iconData: Icons.account_balance, label: 'Account'),
          ProfileMenuItem(iconData: Icons.settings, label: 'Settings'),
          ProfileMenuItem(iconData: Icons.import_export, label: 'Export Data'),
          ProfileMenuItem(iconData: Icons.logout, label: 'Logout'),
        ],
      ),
    );
  }
}
