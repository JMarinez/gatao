import 'transaction.dart';

enum WalletType {
  wallet,
  bank,
}

class Wallet {
  final String name;
  final List<Transaction>? transacitons;
  final String icon;
  final double totalBalance;

  Wallet({
    required this.name,
    required this.transacitons,
    required this.icon,
    required this.totalBalance,
  });

  Wallet copyWith({
    String? name,
    List<Transaction>? transacitons,
    String? icon,
    double? totalBalance,
  }) {
    return Wallet(
        name: name ?? this.name,
        transacitons: transacitons ?? this.transacitons,
        icon: icon ?? this.icon,
        totalBalance: totalBalance ?? this.totalBalance);
  }
}
