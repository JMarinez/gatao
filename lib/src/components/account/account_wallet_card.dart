import 'package:flutter/material.dart';

import '../../models/wallet.dart';

class AccountWalletCard extends StatelessWidget {
  final Wallet wallet;
  const AccountWalletCard({Key? key, required this.wallet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Row(
            children: [
              Icon(Icons.payment),
              Text(wallet.name),
            ],
          ),
          Text(wallet.totalBalance.toString()),
        ],
      ),
    );
  }
}
