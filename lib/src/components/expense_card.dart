import 'package:flutter/material.dart';
import 'package:gatao/src/models/expense.dart';

class ExpenseCard extends StatelessWidget {
  final Expense expense;

  const ExpenseCard({
    Key? key,
    required this.expense,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(expense.label),
      subtitle: Text('${expense.amountSpent}'),
    );
  }
}
