import 'package:flutter/material.dart';
import 'package:gatao/src/components/gatao_dropdown_field.dart';
import '../../util/utils.dart';

class BankOptionsForm extends StatefulWidget {
  final int? bank;

  const BankOptionsForm({required this.bank, Key? key}) : super(key: key);

  @override
  State<BankOptionsForm> createState() => _BankOptionsFormState();
}

class _BankOptionsFormState extends State<BankOptionsForm> {
  int? bankValue = 0;
  @override
  Widget build(BuildContext context) {
    return GataoDropdownField(
      hintText: "Select a bank",
      onChanged: (int? newValue) {
        setState(() {
          bankValue = newValue;
        });
      },
      dropdownValue: widget.bank,
      items: Utils.bankStrings,
    );
  }
}
