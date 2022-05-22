import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../models/services/account_manager.dart';
import '../../components/long_bottom_button.dart';
import 'account_header.dart';
import 'account_list.dart';

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
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  // TODO: Investigate if we it's best to store the image in Firebase instead of storing it locally
                  child: SvgPicture.asset(
                    'assets/credit_card.svg',
                    height: 200.0,
                    placeholderBuilder: (context) {
                      return CircularProgressIndicator(
                          color: Theme.of(context).primaryColor);
                    },
                  ),
                ),
                const SizedBox(height: 15.0),
                Text(
                  'You have no wallets created.',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Tap the button below to create your first wallet!',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
