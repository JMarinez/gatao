import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const GataoApp());
}

class GataoApp extends StatelessWidget {
  const GataoApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Home(),
    );
  }
}
