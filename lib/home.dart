import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/components/navigation/bottom_nav_bar_item.dart';
import 'src/models/services/tab_manager.dart';
import 'src/screens/budget_screen.dart';
import 'src/screens/activity_screen.dart';
import 'src/screens/dashboard_screen.dart';
import 'src/screens/profile/profile_screen.dart';

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
                  children: [
                    Expanded(
                      child: BottomNavBarItem(
                        label: 'Home',
                        iconData: Icons.home,
                        tabManager: tabManager,
                        tabIndex: 0,
                      ),
                    ),
                    Expanded(
                      child: BottomNavBarItem(
                        label: 'Activity',
                        iconData: Icons.payments,
                        tabManager: tabManager,
                        tabIndex: 1,
                      ),
                    ),
                    Expanded(child: Container()),
                    Expanded(
                      child: BottomNavBarItem(
                        label: 'Budget',
                        iconData: Icons.pie_chart,
                        tabManager: tabManager,
                        tabIndex: 2,
                      ),
                    ),
                    Expanded(
                      child: BottomNavBarItem(
                        label: 'Profile',
                        iconData: Icons.account_circle,
                        tabManager: tabManager,
                        tabIndex: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: Theme.of(context).primaryColor,
              child: const Icon(Icons.add),
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
