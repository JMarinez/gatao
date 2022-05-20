import 'package:gatao/src/models/transaccion.dart';

class Wallet {
  final String name;
  final List<Transaction> expenses;
  final double totalBalance;

  Wallet({
    required this.name,
    required this.expenses,
    required this.totalBalance,
  });

  Wallet copyWith({
    String? name,
    List<Transaction>? expenses,
    double? totalBalance,
  }) {
    return Wallet(
        name: name ?? this.name,
        expenses: expenses ?? this.expenses,
        totalBalance: totalBalance ?? this.totalBalance);
  }
}
