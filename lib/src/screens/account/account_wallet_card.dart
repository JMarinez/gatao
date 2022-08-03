import 'package:flutter/material.dart';

import '../../components/icon_container.dart';
import '../../models/wallet.dart';

class AccountWalletCard extends StatelessWidget {
  final Wallet wallet;
  const AccountWalletCard({Key? key, required this.wallet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                wallet.type == WalletType.wallet
                    ? IconContainer(
                        icon: wallet.icon,
                        iconColor: Theme.of(context).primaryColor,
                        backgroundColor: Colors.orange.shade100)
                    : Image.asset(
                        'assets/${wallet.icon}',
                        fit: BoxFit.fitHeight,
                      ),
                const SizedBox(width: 10.0),
                Text(
                  wallet.name,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            Text(
              '\$${wallet.totalBalance % 1 == 0 ? wallet.totalBalance.toInt() : wallet.totalBalance.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
