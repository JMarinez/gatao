import 'package:flutter/material.dart';
import 'package:gatao/src/util/utils.dart';

import '../../models/transaccion.dart';
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
                  child: Icon(
                    Utils.parseIconData(wallet.icon),
                    size: 35.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.orange.shade100,
                  ),
                ),
                const SizedBox(width: 10.0),
                Text(
                  wallet.name,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            Text('\$${wallet.totalBalance.toString()}'),
          ],
        ),
      ),
    );
  }
}
