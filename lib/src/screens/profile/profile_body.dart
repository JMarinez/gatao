import 'package:flutter/material.dart';

import '../account/account_screen.dart';
import 'profile_menu_item.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // TODO: Investigate if either menu options load from the DB or directly from the app code
          GestureDetector(
            child: const ProfileMenuItem(
              icon: 'account_balance',
              label: 'Account',
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AccountScreen())),
          ),
          const Divider(thickness: 1, height: 1, color: Colors.grey),
          const ProfileMenuItem(
            icon: 'settings',
            label: 'Settings',
          ),
          const Divider(thickness: 1, height: 1, color: Colors.grey),
          const ProfileMenuItem(
            icon: 'import_export',
            label: 'Export Data',
          ),
          const Divider(thickness: 1, height: 1, color: Colors.grey),
          const ProfileMenuItem(
            icon: 'logout',
            label: 'Logout',
            iconBackgroundColor: Color(0xFFFFCDD2),
            iconColor: Colors.red,
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25.0)),
    );
  }
}
