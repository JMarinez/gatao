import 'package:flutter/material.dart';

class ExpenseCard extends StatelessWidget {
  final String label;
  final String amount;

  const ExpenseCard({
    Key? key,
    required this.label,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label),
      subtitle: Text(amount),
    );
  }
}
