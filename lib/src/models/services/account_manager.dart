import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:gatao/src/example/dummy_account.dart';
import 'package:gatao/src/models/wallet.dart';

class AccountManager extends ChangeNotifier {
  UnmodifiableListView get account => UnmodifiableListView(dummyAccount);

  void addWallet(Wallet wallet) {
    dummyAccount[0].wallets.add(wallet);

    notifyListeners();
  }

  void updateWallet(Wallet wallet, int index) {
    dummyAccount[0].wallets[index] = wallet;

    notifyListeners();
  }
}
