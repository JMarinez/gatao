import 'package:flutter/material.dart';
import 'package:gatao/src/components/form_body.dart';
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

  var items = [
    '',
    'Wallet',
    'Bank',
  ];

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
          const BalanceTextHeader(title: 'Balance'),
          const SizedBox(height: 10.0),
          FormBody(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15.0),
                const GataoFormField(label: 'Name'),
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 57.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: DropdownButton(
                        style: GataoTheme.lightTextTheme.bodyText1,
                        underline: Container(),
                        hint: Text(
                          'Account Type',
                          style: GataoTheme.formLabelStyle,
                        ),
                        isExpanded: true,
                        value: dropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                LongBottomButton(
                  label: 'Continue',
                  onTap: () => print('Continue'),
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
