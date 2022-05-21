import 'package:flutter/material.dart';
import 'package:gatao/src/util/utils.dart';

class IconContainer extends StatelessWidget {
  final String icon;
  final Color? iconColor;
  final Color? backgroundColor;

  const IconContainer({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Icon(
        Utils.parseIconData(icon),
        size: 32.0,
        color: iconColor ?? Theme.of(context).primaryColor,
      ),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.orange.shade100,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
