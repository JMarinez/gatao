import 'package:flutter/material.dart';
import 'package:gatao/src/example/dummy_account.dart';

import '../../components/flat_app_bar.dart';
import '../../models/wallet.dart';

class CreateWalletScreen extends StatelessWidget {
  final String title;
  final Function(Wallet)? onCreate;
  final Function(Wallet)? onUpdate;

  const CreateWalletScreen({
    Key? key,
    required this.title,
    this.onCreate,
    this.onUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: FlatAppBar(
          title: title,
          backgroundColor: Colors.white,
          iconColor: Colors.black,
        ),
      ),
      body: Column(
        children: [
          TextField(),
          Container(
            child: Column(
              children: [
                TextField(),
                DropdownButton(items: null, onChanged: (item) {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
