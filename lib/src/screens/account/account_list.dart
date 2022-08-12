import 'package:flutter/material.dart';
import 'package:gatao/src/models/wallet.dart';
import 'package:provider/provider.dart';

import '../../models/services/account_manager.dart';
import 'account_wallet_card.dart';
import 'create_wallet_screen.dart';

class AccountList extends StatelessWidget {
  final AccountManager manager;
  const AccountList({
    Key? key,
    required this.manager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: GlowingOverscrollIndicator(
        color: Colors.orange,
        axisDirection: AxisDirection.down,
        child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: ((context, index) => GestureDetector(
              child: AccountWalletCard(wallet: manager.wallet[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      final manager =
                          Provider.of<AccountManager>(context, listen: false);
                      return CreateWalletScreen(
                        title: 'Edit wallet',
                        originalItem: manager.wallet[index],
                        onCreate: (wallet) {},
                        onUpdate: (wallet) {
                          manager.updateWallet(wallet, index);
                          Navigator.pop(context);
                        },
                      );
                    },
                  ),
                );
              })),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: manager.wallet.length,
        ),
      ),
    );
  }
}
