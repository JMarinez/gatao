import 'package:flutter/material.dart';
import 'package:gatao/src/themes/gatao_themes.dart';

class BankOptionsForm extends StatelessWidget {
  const BankOptionsForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          Text(
            'Bank',
            style: GataoTheme.bankOptionsLabelStyle,
          ),
          const SizedBox(width: 10.0),
          Container(
            child: IconButton(
              onPressed: () => print('Banks'),
              icon: const Icon(Icons.add),
              highlightColor: GataoTheme.primaryColor,
              color: Colors.white,
              constraints: const BoxConstraints(minHeight: 40, minWidth: 80),
            ),
            decoration: BoxDecoration(
              color: GataoTheme.primaryColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          // Container(
          //   height: 40,
          //   width: 80,
          //   color: Colors.red,
          // ),
        ],
      ),
    );
  }
}
