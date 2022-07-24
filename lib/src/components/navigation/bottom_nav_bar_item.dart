import 'package:flutter/material.dart';

import '../../models/services/tab_manager.dart';

class BottomNavBarItem extends StatelessWidget {
  final String label;
  final IconData iconData;
  final TabManager tabManager;
  final int tabIndex;

  const BottomNavBarItem({
    Key? key,
    required this.label,
    required this.iconData,
    required this.tabManager,
    required this.tabIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      minWidth: 40.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData,
              color: tabManager.selectedTab == tabIndex
                  ? Theme.of(context).primaryColor
                  : Colors.grey),
          Text(
            label,
            style: TextStyle(
              color: tabManager.selectedTab == tabIndex
                  ? Theme.of(context).primaryColor
                  : Colors.grey,
              fontSize: 13.0,
            ),
          ),
        ],
      ),
      onPressed: () {
        tabManager.goToTab(tabIndex);
      },
    );
  }
}
