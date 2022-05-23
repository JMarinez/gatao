import 'package:flutter/material.dart';

class FlatAppBar extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color iconColor;

  const FlatAppBar({
    Key? key,
    required this.title,
    required this.backgroundColor,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Account',
        style: Theme.of(context).textTheme.bodyText2,
      ),
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      centerTitle: true,
      elevation: 0,
    );
  }
}
