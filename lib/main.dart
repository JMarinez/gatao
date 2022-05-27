import 'package:flutter/material.dart';
import 'package:gatao/src/themes/gatao_themes.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/models/services/expense_manager.dart';
import 'src/models/services/tab_manager.dart';
import 'src/models/services/account_manager.dart';
import 'home.dart';

void main() {
  runApp(
    const GataoApp(),
  );
}

class GataoApp extends StatelessWidget {
  const GataoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TabManager()),
        ChangeNotifierProvider(create: (context) => ExpenseManager()),
        ChangeNotifierProvider(create: (context) => AccountManager()),
      ],
      child: MaterialApp(
        title: 'Gatao',
        theme: ThemeData(
          primaryColor: GataoTheme.primaryColor,
          textTheme: GataoTheme.lightTextTheme,
        ),
        home: const Home(),
      ),
    );
  }
}
