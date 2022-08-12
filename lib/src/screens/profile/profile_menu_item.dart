import 'package:flutter/material.dart';

import '../../components/icon_container.dart';

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color? iconColor;
  final Color? iconBackgroundColor;

  const ProfileMenuItem({
    Key? key,
    required this.icon,
    required this.label,
    this.iconColor,
    this.iconBackgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 80,
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          IconContainer(
              icon: icon,
              iconColor: iconColor,
              backgroundColor: iconBackgroundColor),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
