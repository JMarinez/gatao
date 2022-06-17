import 'package:flutter/material.dart';
import 'package:gatao/src/components/bank_container.dart';
import 'package:gatao/src/example/dummy_account.dart';
import 'package:gatao/src/themes/gatao_themes.dart';

import '../../components/gatao_icon_button.dart';
import '../../util/utils.dart';

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
          GataoIconButton(
            iconData: Icons.add,
            onPressed: () => showDialog(
                context: context,
                builder: (context) => SimpleDialog(
                      children: [
                        const Text('Banks'),
                        GridView.count(
                          crossAxisCount: 3,
                          children: Utils.bankContainers,
                        )
                      ],
                    )),
          ),
        ],
      ),
    );
  }
}
