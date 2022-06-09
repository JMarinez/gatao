import 'wallet.dart';

class Account {
  final List<Wallet> wallets;
  double totalBalance;

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
