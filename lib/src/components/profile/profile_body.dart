import 'package:flutter/material.dart';

import 'profile_menu_item.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          ProfileMenuItem(iconData: Icons.account_balance, label: 'Account'),
          Divider(thickness: 1, height: 1, color: Colors.grey),
          ProfileMenuItem(iconData: Icons.settings, label: 'Settings'),
          Divider(thickness: 1, height: 1, color: Colors.grey),
          ProfileMenuItem(iconData: Icons.import_export, label: 'Export Data'),
          Divider(thickness: 1, height: 1, color: Colors.grey),
          ProfileMenuItem(iconData: Icons.logout, label: 'Logout'),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25.0)),
    );
  }
}
