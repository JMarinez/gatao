import 'package:flutter/material.dart';

class CreateExpenseScreen extends StatelessWidget {
  const CreateExpenseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Create Expense',
        style: TextStyle(fontSize: 28.0),
      ),
    );
  }
}
