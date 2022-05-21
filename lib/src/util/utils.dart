import 'package:flutter/material.dart';

class Utils {
  static Map<String, IconData> icons = {
    'wallet': Icons.wallet,
    'payment': Icons.payment,
    'paypal': Icons.paypal,
    'logout': Icons.logout,
    'account_balance': Icons.account_balance,
    'settings': Icons.settings,
    'import_export': Icons.import_export
  };

  static IconData parseIconData(String iconString) {
    return icons[iconString]!;
  }
}
