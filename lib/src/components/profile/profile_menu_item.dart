import 'package:flutter/material.dart';

class ProfileMenuItem extends StatelessWidget {
  final IconData iconData;
  final String label;

  const ProfileMenuItem({
    Key? key,
    required this.iconData,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 80,
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              iconData,
              size: 32.0,
            ),
            decoration: BoxDecoration(
                color: const Color(0xffEEE5FF),
                borderRadius: BorderRadius.circular(15.0)),
          ),
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
