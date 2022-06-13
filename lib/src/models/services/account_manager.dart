import 'package:flutter/material.dart';
import 'dart:collection';

import '../../example/dummy_account.dart';
import '../../models/wallet.dart';
import '../account.dart';

class AccountManager extends ChangeNotifier {
  Account get account => dummyAccount;
  UnmodifiableListView get wallet => UnmodifiableListView(dummyAccount.wallets);

  void addWallet(Wallet wallet) {
    final oldBalance = dummyAccount.totalBalance;
    final newBalance = oldBalance + wallet.totalBalance;

    dummyAccount.wallets.add(wallet);
    dummyAccount.totalBalance = newBalance;

    notifyListeners();
  }

  void updateWallet(Wallet wallet, int index) {
    final oldBalance = dummyAccount.totalBalance;
    final oldWalletBalance = dummyAccount.wallets[index].totalBalance;

    final newBalance = oldBalance - oldWalletBalance + wallet.totalBalance;

    dummyAccount.wallets[index] = wallet;
    dummyAccount.totalBalance = newBalance;

    notifyListeners();
  }
}
