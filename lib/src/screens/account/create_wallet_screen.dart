import 'package:flutter/material.dart';
import 'package:gatao/src/components/form_body.dart';
import 'package:gatao/src/components/gatao_dropdown_field.dart';
import 'package:gatao/src/components/gatao_form_field.dart';
import 'package:gatao/src/components/long_bottom_button.dart';
import 'package:gatao/src/example/dummy_account.dart';

import '../../components/balance_text_header.dart';
import '../../components/flat_app_bar.dart';
import '../../models/wallet.dart';
import '../../themes/gatao_themes.dart';

class CreateWalletScreen extends StatefulWidget {
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
  State<CreateWalletScreen> createState() => _CreateWalletScreenState();
}

class _CreateWalletScreenState extends State<CreateWalletScreen> {
  String? dropdownValue;
  final TextEditingController _balanceController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  String _balance = '';
  String _name = '';
  String _type = '';

  var items = [
    '',
    'Wallet',
    'Bank',
  ];

  @override
  void initState() {
    _balanceController.addListener(() {
      setState(() {
        _balance = _balanceController.text;
      });
    });
    _nameController.addListener(() {
      _name = _nameController.text;
    });
    super.initState();
  }

  @override
  void dispose() {
    _balanceController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: FlatAppBar(
          title: widget.title,
          appBarTheme: GataoTheme.darkAppBarTitle,
          backgroundColor: Theme.of(context).primaryColor,
          iconColor: Colors.white,
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          const Spacer(),
          BalanceTextHeader(
            title: 'Balance',
            controller: _balanceController,
          ),
          const SizedBox(height: 10.0),
          FormBody(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15.0),
                GataoFormField(
                  label: 'Name',
                  controller: _nameController,
                ),
                const SizedBox(height: 10.0),
                GataoDropdownField(
                  hintText: 'Account Type',
                  dropdownValue: dropdownValue,
                  items: items,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                ),
                const SizedBox(height: 10.0),
                LongBottomButton(
                  label: 'Continue',
                  onTap: () {
                    final _wallet = Wallet(
                      name: _name,
                      transacitons: null,
                      icon: '',
                      totalBalance: double.parse(_balance),
                    );
                    widget.onCreate!(_wallet);
                  },
                ),
                const SizedBox(height: 15.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
