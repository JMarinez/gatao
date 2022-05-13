import 'package:flutter/material.dart';
import 'package:gatao/src/models/expense_manager.dart';
import 'package:gatao/src/models/tab_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
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
    return MaterialApp(
      title: 'Gatao',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: TextTheme(
          headline1: GoogleFonts.inter(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
          headline2: GoogleFonts.inter(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          headline3: GoogleFonts.inter(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
          subtitle1: GoogleFonts.inter(
            fontSize: 14.0,
            color: Colors.grey,
          ),
          bodyText1: GoogleFonts.inter(
            fontSize: 16.0,
          ),
          bodyText2: GoogleFonts.inter(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TabManager()),
          ChangeNotifierProvider(create: (context) => ExpenseManager()),
        ],
        child: const Home(),
      ),
    );
  }
}
