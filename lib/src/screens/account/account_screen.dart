import 'package:flutter/material.dart';
import 'package:gatao/src/screens/account/account_list.dart';
import 'package:provider/provider.dart';
import 'package:gatao/src/components/account/account_header.dart';
import 'package:gatao/src/models/services/account_manager.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Account',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const AccountHeader(),
            const SizedBox(height: 10.0),
            _buildAccountBody(),
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
          return Container();
        }
      },
    );
  }
}
