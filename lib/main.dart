import 'package:flutter/material.dart';
import 'package:gatao/src/models/expense_manager.dart';
import 'package:provider/provider.dart';
import 'home.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ExpenseManager()),
      ],
      child: const GataoApp(),
    ),
  );
}

class GataoApp extends StatelessWidget {
  const GataoApp({Key? key}) : super(key: key);

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
