import 'package:flutter/material.dart';

import '../components/profile/profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      color: const Color(0xffE3E5E5),
      child: Column(
        children: [
          const ProfileHeader(),
          Container(
            color: Colors.white,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const Icon(
                        Icons.account_balance,
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
                      'Account',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
