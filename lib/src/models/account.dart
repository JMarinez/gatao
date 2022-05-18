import 'package:gatao/src/models/services/wallet.dart';

class Account {
  final List<Wallet> wallets;
  final double accountTotal;

  Account({
    required this.wallets,
    required this.accountTotal,
  });

  Account copyWith({List<Wallet>? wallets, double? accountTotal}) {
    return Account(
        wallets: wallets ?? this.wallets,
        accountTotal: accountTotal ?? this.accountTotal);
  }
}
