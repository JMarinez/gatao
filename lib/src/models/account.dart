import 'package:gatao/src/models/wallet.dart';

class Account {
  final List<Wallet> wallets;
  final double totalBalance;

  Account({
    required this.wallets,
    required this.totalBalance,
  });

  Account copyWith({List<Wallet>? wallets, double? totalBalance}) {
    return Account(
        wallets: wallets ?? this.wallets,
        totalBalance: totalBalance ?? this.totalBalance);
  }
}
