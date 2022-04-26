import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:gatao/src/models/expense.dart';

class ExpenseManager extends ChangeNotifier {
  List<Expense> _expenses = [];

  UnmodifiableListView get expenses => UnmodifiableListView(_expenses);

  void addExpense(Expense expense) {
    _expenses.add(expense);

    notifyListeners();
  }

  void deleteAllExpense(Expense expense) {
    _expenses.clear();

    notifyListeners();
  }
}
