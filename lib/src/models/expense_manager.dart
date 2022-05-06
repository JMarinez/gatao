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

  void addExpense(Expense expense) {
    _expenses.add(expense);
    _totalSpent = _totalSpent + double.parse(expense.amount);
    print(_totalSpent);

    notifyListeners();
  }

  void updateExpense(Expense expense, int index) {
    final oldAmount = double.parse(expenses[index].amount);
    _expenses[index] = expense;

    //* Subtracting old expense amount to maintain balance
    _totalSpent = _totalSpent - oldAmount;
    //* Adding new expense amount
    _totalSpent = _totalSpent + double.parse(expense.amount);
    print(_totalSpent);

    notifyListeners();
  }

  void deleteAllExpense(Expense expense) {
    _expenses.clear();

    notifyListeners();
  }
}
