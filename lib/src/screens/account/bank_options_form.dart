import 'package:flutter/material.dart';
import 'package:gatao/src/components/bank_container.dart';
import 'package:gatao/src/components/gatao_dropdown_field.dart';
import 'package:gatao/src/example/dummy_account.dart';
import 'package:gatao/src/themes/gatao_themes.dart';

import '../../components/gatao_icon_button.dart';
import '../../util/utils.dart';

class BankOptionsForm extends StatefulWidget {
  const BankOptionsForm({Key? key}) : super(key: key);

  @override
  State<BankOptionsForm> createState() => _BankOptionsFormState();
}

class _BankOptionsFormState extends State<BankOptionsForm> {
  int? dropdownValue;
  @override
  Widget build(BuildContext context) {
    return GataoDropdownField(
      hintText: "Select a bank",
      onChanged: (int? newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      dropdownValue: dropdownValue,
      items: Utils.bankStrings,
    );
  }
}
