import 'package:flutter/material.dart';
import 'package:gatao/src/components/form_body.dart';
import 'package:gatao/src/components/gatao_dropdown_field.dart';
import 'package:gatao/src/components/gatao_form_field.dart';
import 'package:gatao/src/components/long_bottom_button.dart';
import 'package:gatao/src/example/dummy_account.dart';
import 'package:gatao/src/screens/account/bank_options_form.dart';

import '../../components/balance_text_header.dart';
import '../../components/flat_app_bar.dart';
import '../../models/wallet.dart';
import '../../themes/gatao_themes.dart';

class CreateWalletScreen extends StatefulWidget {
  final String title;
  final Function(Wallet)? onCreate;
  final Function(Wallet)? onUpdate;
  final Wallet? originalItem;
  final bool? isUpdating;

  const CreateWalletScreen({
    Key? key,
    required this.title,
    required this.onCreate,
    required this.onUpdate,
    this.originalItem,
  })  : isUpdating = (originalItem != null),
        super(key: key);

  @override
  State<CreateWalletScreen> createState() => _CreateWalletScreenState();
}

class _CreateWalletScreenState extends State<CreateWalletScreen> {
  WalletType? dropdownValue;
  bool showBankOptions = false;
  final TextEditingController _balanceController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  String _balance = '';
  String _name = '';
  String _type = '';

  var items = {
    'Wallet': WalletType.wallet,
    'Bank': WalletType.bank,
  };

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
        child: appBar(context),
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
                  onChanged: (WalletType? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                      if (newValue == WalletType.bank) {
                        showBankOptions = true;
                      } else {
                        showBankOptions = false;
                      }
                    });
                  },
                ),
                const SizedBox(height: 10.0),
                _showBankOptions(),
                const SizedBox(height: 10.0),
                LongBottomButton(
                  label: 'Continue',
                  onTap: () {
                    final _wallet = Wallet(
                      name: _name,
                      transacitons: null,
                      icon: 'wallet',
                      totalBalance: double.parse(_balance),
                    );

                    if (widget.isUpdating!) {
                      widget.onUpdate!(_wallet);
                    } else {
                      widget.onCreate!(_wallet);
                    }
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

  FlatAppBar appBar(BuildContext context) {
    return FlatAppBar(
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
    );
  }

  Widget _showBankOptions() {
    if (showBankOptions) {
      return const BankOptionsForm();
    } else {
      return Container();
    }
  }
}
