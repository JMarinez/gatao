import 'package:flutter/material.dart';
import 'package:gatao/src/screens/activity_list_screen.dart';
import 'package:provider/provider.dart';

import 'package:gatao/src/screens/create_expense_screen.dart';

import '../models/expense_manager.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 500,
          child: _buildActivityBody(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          final manager = Provider.of<ExpenseManager>(context, listen: false);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CreateExpenseScreen(
                        onCreate: (expense) {
                          manager.addExpense(expense);

                          Navigator.pop(context);
                        },
                      )));
        },
      ),
    );
  }

  Widget _buildActivityBody() {
    return Consumer<ExpenseManager>(builder: (context, manager, child) {
      if (manager.expenses.isNotEmpty) {
        return ActivityListScreen(
          manager: manager,
        );
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/receipt.png'),
            const Text('No recent activity', style: TextStyle(fontSize: 24.0)),
            const Text('Tap the + to add your recent expenses!'),
          ],
        );
      }
    });
  }
}
