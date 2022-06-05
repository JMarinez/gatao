import 'package:flutter/material.dart';

import '../themes/gatao_themes.dart';

class GataoFormField extends StatelessWidget {
  final String label;

  const GataoFormField({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextFormField(
        cursorColor: GataoTheme.primaryColor,
        autocorrect: false,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
              color: GataoTheme.primaryColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          labelText: label,
          labelStyle: GataoTheme.formLabelStyle,
        ),
        style: GataoTheme.lightTextTheme.bodyText1,
      ),
    );
  }
}
