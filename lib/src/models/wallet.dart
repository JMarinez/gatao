import 'package:gatao/src/models/transaccion.dart';

class Wallet {
  final String name;
  final List<Transaction> transacitons;
  final double totalBalance;

  Wallet({
    required this.name,
    required this.transacitons,
    required this.totalBalance,
  });

  Wallet copyWith({
    String? name,
    List<Transaction>? transacitons,
    double? totalBalance,
  }) {
    return Wallet(
        name: name ?? this.name,
        transacitons: transacitons ?? this.transacitons,
        totalBalance: totalBalance ?? this.totalBalance);
  }
}
