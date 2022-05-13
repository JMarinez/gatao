import 'package:flutter/material.dart';
import 'package:gatao/src/models/tab_manager.dart';

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
                  ? Colors.blue
                  : Colors.grey),
          Text(
            label,
            style: TextStyle(
                color: tabManager.selectedTab == tabIndex
                    ? Colors.blue
                    : Colors.grey),
          ),
        ],
      ),
      onPressed: () {
        tabManager.goToTab(tabIndex);
      },
    );
  }
}
