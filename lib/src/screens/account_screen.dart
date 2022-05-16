import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        backgroundColor: const Color(0xffF7F9FA),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(child: Text('Account')),
        ],
      ),
    );
  }
}
