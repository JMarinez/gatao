import 'transaction.dart';

enum WalletType {
  wallet,
  bank,
}

class Wallet {
  final String name;
  final WalletType? type;
  final List<Transaction>? transacitons;
  final String? icon;
  final double totalBalance;

  Wallet({
    required this.name,
    required this.type,
    required this.transacitons,
    required this.icon,
    required this.totalBalance,
  });

  Wallet copyWith({
    String? name,
    WalletType? type,
    List<Transaction>? transacitons,
    String? icon,
    double? totalBalance,
  }) {
    return Wallet(
        name: name ?? this.name,
        type: type ?? this.type,
        transacitons: transacitons ?? this.transacitons,
        icon: icon ?? this.icon,
        totalBalance: totalBalance ?? this.totalBalance);
  }
}
