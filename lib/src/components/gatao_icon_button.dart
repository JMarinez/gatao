import 'package:flutter/material.dart';

import '../themes/gatao_themes.dart';

class GataoIconButton extends StatelessWidget {
  final IconData iconData;
  final Function onPressed;
  const GataoIconButton({
    required this.iconData,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: () => onPressed(),
        icon: Icon(iconData),
        highlightColor: GataoTheme.primaryColor,
        color: Colors.white,
        constraints: const BoxConstraints(minHeight: 40, minWidth: 80),
      ),
      decoration: BoxDecoration(
        color: GataoTheme.primaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
