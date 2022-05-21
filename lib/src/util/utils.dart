import 'package:flutter/material.dart';

class Utils {
  static Map<String, IconData> icons = {
    'wallet': Icons.wallet,
    'payment': Icons.payment,
    'paypal': Icons.paypal,
  };

  static IconData parseIconData(String iconString) {
    return icons[iconString]!;
  }
}
