import 'package:gatao/src/models/expense.dart';

class Wallet {
  final List<Expense> expenses;
  final double walletTotal;

  Wallet({
    required this.expenses,
    required this.walletTotal,
  });

  Wallet copyWith({
    List<Expense>? expenses,
    double? walletTotal,
  }) {
    return Wallet(
        expenses: expenses ?? this.expenses,
        walletTotal: walletTotal ?? this.walletTotal);
  }
}
