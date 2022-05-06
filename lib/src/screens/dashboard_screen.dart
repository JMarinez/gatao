import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/expense_manager.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ExpenseManager>(builder: (context, manager, child) {
      return Center(
        child: Text(
          'Total spent: ${manager.totalSpent.toString()}',
          style: const TextStyle(fontSize: 30.0),
        ),
      );
    });
  }
}
