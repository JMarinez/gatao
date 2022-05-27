import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// In a custom theme page we have described color and fonts
/// We may add more custom theme-features later
///

class GataoTheme {
  static const Color primaryColor = Color(0xFFE65100);

  static TextStyle lightHeadlineX = GoogleFonts.inter(
    fontSize: 64.0,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static TextStyle darkHeadlineX = GoogleFonts.inter(
    fontSize: 64.0,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle lightAppBarTitle = GoogleFonts.inter(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static TextStyle darkAppBarTitle = GoogleFonts.inter(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle walletBalanceText = GoogleFonts.inter(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: Colors.orange.shade100,
  );

  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.inter(
      fontSize: 36.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline2: GoogleFonts.inter(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline3: GoogleFonts.inter(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline4: GoogleFonts.inter(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    subtitle1: GoogleFonts.inter(
      fontSize: 14.0,
      color: Colors.grey,
      fontWeight: FontWeight.w500,
    ),
    subtitle2: GoogleFonts.inter(
      fontSize: 16.0,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    bodyText1: GoogleFonts.inter(
      fontSize: 16.0,
    ),
    bodyText2: GoogleFonts.inter(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headline1: GoogleFonts.openSans(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline2: GoogleFonts.openSans(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headline3: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headline6: GoogleFonts.openSans(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          return Colors.black;
        }),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: lightTextTheme,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: darkTextTheme,
    );
  }
}
