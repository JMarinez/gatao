import 'package:flutter/material.dart';

import '../../models/wallet.dart';

class AccountWalletCard extends StatelessWidget {
  final Wallet wallet;
  const AccountWalletCard({Key? key, required this.wallet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  child: const Icon(
                    Icons.payment,
                    size: 35.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(width: 10.0),
                Text(wallet.name),
              ],
            ),
            Text(wallet.totalBalance.toString()),
          ],
        ),
      ),
    );
  }
}
