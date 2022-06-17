import 'package:flutter/material.dart';
import 'package:gatao/src/models/wallet.dart';

import '../themes/gatao_themes.dart';

class GataoDropdownField extends StatelessWidget {
  final String hintText;
  final Function(WalletType?) onChanged;
  final WalletType? dropdownValue;
  final Map<String, WalletType> items;

  const GataoDropdownField({
    Key? key,
    required this.hintText,
    required this.onChanged,
    required this.dropdownValue,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              hintText,
              style: GataoTheme.formLabelStyle,
            ),
            isExpanded: true,
            value: dropdownValue,
            icon: const Icon(Icons.keyboard_arrow_down),
            items: items.entries.map((entry) {
              return DropdownMenuItem(
                value: entry.value,
                child: Text(entry.key),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
