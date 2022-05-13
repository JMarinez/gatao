import 'package:flutter/material.dart';
import 'package:gatao/src/components/navigation/bottom_nav_bar_item.dart';
import 'package:gatao/src/screens/budget_screen.dart';
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
    const BudgetScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(builder: (context, tabManager, child) {
      return Container(
        color: const Color(0xffF7F9FA),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: pages[tabManager.selectedTab],
            bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              notchMargin: 10.0,
              child: SizedBox(
                height: 60.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        BottomNavBarItem(
                          label: 'Home',
                          iconData: Icons.home,
                          tabManager: tabManager,
                          tabIndex: 0,
                        ),
                        BottomNavBarItem(
                          label: 'Activity',
                          iconData: Icons.payments,
                          tabManager: tabManager,
                          tabIndex: 1,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        BottomNavBarItem(
                          label: 'Budget',
                          iconData: Icons.pie_chart,
                          tabManager: tabManager,
                          tabIndex: 2,
                        ),
                        BottomNavBarItem(
                          label: 'Profile',
                          iconData: Icons.account_circle,
                          tabManager: tabManager,
                          tabIndex: 3,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: (() {}),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
          ),
        ),
      );
    });
  }
}
