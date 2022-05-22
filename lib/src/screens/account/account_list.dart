import 'package:flutter/material.dart';

import '../../models/services/account_manager.dart';
import 'account_wallet_card.dart';

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
          itemBuilder: ((context, index) =>
              AccountWalletCard(wallet: manager.wallet[index])),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: manager.wallet.length,
        ),
      ),
    );
  }
}
