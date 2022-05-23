import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/flat_app_bar.dart';
import '../../models/services/account_manager.dart';
import '../../components/long_bottom_button.dart';
import 'account_header.dart';
import 'account_list.dart';
import 'empty_account.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: FlatAppBar(
          title: 'Account',
          backgroundColor: Colors.white,
          iconColor: Colors.black,
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const AccountHeader(),
            const SizedBox(height: 10.0),
            _buildAccountBody(),
            const Spacer(),
            LongBottomButton(
              onPressed: () {},
              label: '+ Add new wallet',
            ),
            const SizedBox(height: 15.0),
          ],
        ),
      ),
    );
  }

  Widget _buildAccountBody() {
    return Consumer<AccountManager>(
      builder: (context, manager, child) {
        if (manager.account.wallets.isNotEmpty) {
          return AccountList(manager: manager);
        } else {
          return const EmptyAccountList();
        }
      },
    );
  }
}
