import 'transaction.dart';

enum WalletType {
  wallet,
  bank,
}

class Wallet {
  final String name;
  final WalletType? type;
  final List<Transaction>? transacitons;
  final int? iconData;
  final double totalBalance;

  Wallet({
    required this.name,
    required this.type,
    required this.transacitons,
    required this.iconData,
    required this.totalBalance,
  });

  Wallet copyWith({
    String? name,
    WalletType? type,
    List<Transaction>? transacitons,
    int? iconData,
    double? totalBalance,
  }) {
    return Wallet(
        name: name ?? this.name,
        type: type ?? this.type,
        transacitons: transacitons ?? this.transacitons,
        iconData: iconData ?? this.iconData,
        totalBalance: totalBalance ?? this.totalBalance);
  }
}
