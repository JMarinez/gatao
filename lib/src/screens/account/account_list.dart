import 'package:flutter/material.dart';
import 'package:gatao/src/components/account/account_wallet_card.dart';
import 'package:gatao/src/models/services/account_manager.dart';

class AccountList extends StatelessWidget {
  final AccountManager manager;
  const AccountList({
    Key? key,
    required this.manager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlowingOverscrollIndicator(
      color: Colors.orange,
      axisDirection: AxisDirection.down,
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: ((context, index) =>
            AccountWalletCard(wallet: manager.wallet[index])),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: manager.wallet.length,
      ),
    );
  }
}
