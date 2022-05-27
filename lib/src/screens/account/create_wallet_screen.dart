import 'package:flutter/material.dart';
import 'package:gatao/src/components/long_bottom_button.dart';
import 'package:gatao/src/example/dummy_account.dart';

import '../../components/flat_app_bar.dart';
import '../../models/wallet.dart';
import '../../themes/gatao_themes.dart';

class CreateWalletScreen extends StatelessWidget {
  final String title;
  final Function(Wallet)? onCreate;
  final Function(Wallet)? onUpdate;
  final bool? isUpdating;

  const CreateWalletScreen({
    Key? key,
    required this.title,
    this.onCreate,
    this.onUpdate,
    this.isUpdating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: FlatAppBar(
          title: title,
          appBarTheme: GataoTheme.darkAppBarTitle,
          backgroundColor: Theme.of(context).primaryColor,
          iconColor: Colors.white,
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          const Spacer(),
          Container(
            margin: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Balance', style: GataoTheme.walletBalanceText),
                Row(
                  children: [
                    Text('\$', style: GataoTheme.darkHeadlineX),
                    Flexible(
                        flex: 9,
                        child: TextField(
                          style: GataoTheme.darkHeadlineX,
                          autocorrect: false,
                          cursorColor: Colors.white,
                          decoration: null,
                        )),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            child: Column(
              children: [
                TextField(),
                DropdownButton(items: null, onChanged: (item) {}),
                LongBottomButton(
                  label: 'Continue',
                  onTap: () => print('Continue'),
                )
              ],
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
