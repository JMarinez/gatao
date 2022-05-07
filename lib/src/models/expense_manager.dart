import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:gatao/src/models/expense.dart';

class ExpenseManager extends ChangeNotifier {
  final _expenses = <Expense>[];
  double _totalSpent = 0;
  final double _expenseLimit = 5000;
  bool isReachingLimit = false;

  UnmodifiableListView get expenses => UnmodifiableListView(_expenses);

  double get totalSpent {
    return _totalSpent;
  }

  double get expenseLimit {
    return _expenseLimit;
  }

  void addExpense(Expense expense) {
    _expenses.add(expense);
    _totalSpent = _totalSpent + double.parse(expense.amount);

    if (_totalSpent >= _expenseLimit * 0.8) {
      isReachingLimit = true;
    } else {
      isReachingLimit = false;
    }

    print(isReachingLimit);

    notifyListeners();
  }

  void updateExpense(Expense expense, int index) {
    final oldAmount = double.parse(expenses[index].amount);
    _expenses[index] = expense;

    //* Subtracting old expense amount to maintain balance
    _totalSpent = _totalSpent - oldAmount;
    //* Adding new expense amount
    _totalSpent = _totalSpent + double.parse(expense.amount);

    if (_totalSpent >= _expenseLimit * 0.8) {
      isReachingLimit = true;
    } else {
      isReachingLimit = false;
    }

    print(isReachingLimit);

    notifyListeners();
  }

  void deleteAllExpense(Expense expense) {
    _expenses.clear();

    notifyListeners();
  }
}
