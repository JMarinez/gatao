import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/expense_manager.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ExpenseManager>(
      builder: (context, manager, child) {
        if (manager.totalSpent == 0) {
          return const Center(
            child: Text(
              'No money spent!',
              style: TextStyle(fontSize: 30.0),
            ),
          );
        } else {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total spent: ${manager.totalSpent.toString()}',
                  style: const TextStyle(fontSize: 30.0),
                ),
                //* Condition to let the user know they are reaching the total expense limit
                getLimitMessage(manager),
              ],
            ),
          );
        }
      },
    );
  }

  Widget getLimitMessage(ExpenseManager manager) {
    if (manager.isReachingLimit) {
      return const Text("You're reaching the limit!");
    } else {
      return Container();
    }
  }
}
