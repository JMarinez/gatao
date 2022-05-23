import 'package:flutter/material.dart';

import '../../models/wallet.dart';

class CreateWalletScreen extends StatelessWidget {
  final Function(Wallet)? onCreate;
  final Function(Wallet)? onUpdate;

  const CreateWalletScreen({
    Key? key,
    this.onCreate,
    this.onUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
