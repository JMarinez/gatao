import 'package:flutter/material.dart';

class FlatAppBar extends StatelessWidget {
  final String title;
  final TextStyle appBarTheme;
  final Color backgroundColor;
  final Color iconColor;

  const FlatAppBar({
    Key? key,
    required this.title,
    required this.appBarTheme,
    required this.backgroundColor,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Account',
        style: appBarTheme,
      ),
      backgroundColor: backgroundColor,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: iconColor,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      centerTitle: true,
      elevation: 0,
    );
  }
}
