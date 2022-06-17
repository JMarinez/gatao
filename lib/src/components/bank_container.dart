import 'package:flutter/material.dart';

class BankContainer extends StatelessWidget {
  final Widget child;

  const BankContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      height: 40.0,
      width: 80.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
