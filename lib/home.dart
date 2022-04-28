import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:gatao/src/models/tab_manager.dart';
import 'package:gatao/src/screens/activity_screen.dart';
import 'package:gatao/src/screens/dashboard_screen.dart';
import 'package:gatao/src/screens/profile_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static List pages = [
    const DashboardScreen(),
    const ActivityScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(builder: (context, tabManager, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Gatao'),
          backgroundColor: Colors.red,
        ),
        body: pages[tabManager.selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: tabManager.selectedTab,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.payments),
              label: 'Activity',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Profile',
            ),
          ],
          onTap: (value) {
            tabManager.goToTab(value);
          },
        ),
      );
    });
  }
}
