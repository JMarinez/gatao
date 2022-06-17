import 'package:flutter/material.dart';
import 'package:gatao/src/components/bank_container.dart';

class Utils {
  static Map<String, IconData> icons = {
    'wallet': Icons.wallet,
    'payment': Icons.payment,
    'paypal': Icons.paypal,
    'logout': Icons.logout,
    'account_balance': Icons.account_balance,
    'settings': Icons.settings,
    'area_chart_outlined': Icons.area_chart_outlined
  };

  static List<String> banks = [
    'ademi.png',
    'apap.png',
    'banesco.png',
    'banreservas.png',
    'bhd.png',
    'caribe.png',
    'cibao.png',
    'citi.png',
    'popular.png',
    'promerica.png',
    'santacruz.png',
    'scotiabank.png',
    'vimenca.png',
  ];

  static IconData parseIconData(String iconString) {
    return icons[iconString]!;
  }

  static List<Widget> bankContainers = banks
      .map((item) => BankContainer(
            child: Image.asset(
              'assets/banks/$item',
            ),
          ))
      .toList();
}
