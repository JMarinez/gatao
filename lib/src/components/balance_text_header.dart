import 'package:flutter/material.dart';

import '../themes/gatao_themes.dart';

class BalanceTextHeader extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  const BalanceTextHeader({
    Key? key,
    required this.title,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: GataoTheme.walletBalanceText),
          Row(
            children: [
              Text('\$', style: GataoTheme.darkHeadlineX),
              Flexible(
                flex: 9,
                child: TextField(
                  controller: controller,
                  keyboardType: TextInputType.number,
                  style: GataoTheme.darkHeadlineX,
                  autocorrect: false,
                  cursorColor: Colors.white,
                  decoration: InputDecoration.collapsed(
                    hintText: '0.00',
                    hintStyle: GataoTheme.darkHeadlineX,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
