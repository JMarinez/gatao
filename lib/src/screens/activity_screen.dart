import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/services/expense_manager.dart';
import '../screens/activity_list_screen.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: _buildActivityBody());
  }

  Widget _buildActivityBody() {
    return Consumer<ExpenseManager>(builder: (context, manager, child) {
      if (manager.expenses.isNotEmpty) {
        return ActivityListScreen(
          manager: manager,
        );
      } else {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: SvgPicture.asset(
                  'assets/payments.svg',
                  height: 300,
                  placeholderBuilder: (context) {
                    return CircularProgressIndicator(
                        color: Theme.of(context).primaryColor);
                  },
                ),
              ),
              const Text('No recent activity',
                  style: TextStyle(fontSize: 24.0)),
              const Text('Tap the + to add your recent expenses!'),
            ],
          ),
        );
      }
    });
  }
}
