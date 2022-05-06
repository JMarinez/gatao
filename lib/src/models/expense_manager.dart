import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:gatao/src/models/expense.dart';

class ExpenseManager extends ChangeNotifier {
  final _expenses = <Expense>[];
  double _totalSpent = 0;

  UnmodifiableListView get expenses => UnmodifiableListView(_expenses);

  double get totalSpent {
    return _totalSpent;
  }

  void updateTotalSpent(double amount) {
    _totalSpent = _totalSpent + amount;
    print(_totalSpent);
    notifyListeners();
  }

  void addExpense(Expense expense) {
    _expenses.add(expense);

    notifyListeners();
  }

  void updateExpense(Expense expense, int index) {
    _expenses[index] = expense;

    notifyListeners();
  }

  void deleteAllExpense(Expense expense) {
    _expenses.clear();

    notifyListeners();
  }
}
