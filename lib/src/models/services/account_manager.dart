import 'package:flutter/material.dart';
import 'dart:collection';

import '../../example/dummy_account.dart';
import '../../models/wallet.dart';
import '../account.dart';

class AccountManager extends ChangeNotifier {
  Account get account => dummyAccount;
  UnmodifiableListView get wallet => UnmodifiableListView(dummyAccount.wallets);

  void addWallet(Wallet wallet) {
    dummyAccount.wallets.add(wallet);

    notifyListeners();
  }

  void updateWallet(Wallet wallet, int index) {
    dummyAccount.wallets[index] = wallet;

    notifyListeners();
  }
}
