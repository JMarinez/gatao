import 'package:flutter/material.dart';

import '../models/services/expense_manager.dart';
import '../screens/create_expense_screen.dart';
import '../components/expense_card.dart';

class ActivityListScreen extends StatelessWidget {
  final ExpenseManager manager;

  const ActivityListScreen({Key? key, required this.manager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final expenses = manager.expenses;
    return ListView.separated(
      itemCount: manager.expenses.length,
      separatorBuilder: (context, index) {
        return const SizedBox(height: 12.0);
      },
      itemBuilder: ((context, index) {
        final expense = expenses[index];
        return GestureDetector(
          child: ExpenseCard(label: expense.label, amount: expense.amount),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateExpenseScreen(
                  originalItem: expense,
                  onCreate: (expense) {},
                  onUpdate: (expense) {
                    manager.updateExpense(expense, index);

                    Navigator.pop(context);
                  },
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
