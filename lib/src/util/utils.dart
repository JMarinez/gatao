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

  static Map<int, String> banks = {
    1: 'ademi.png',
    2: 'apap.png',
    3: 'banesco.png',
    4: 'banreservas.png',
    5: 'bhd.png',
    6: 'caribe.png',
    7: 'cibao.png',
    8: 'citi.png',
    9: 'popular.png',
    10: 'promerica.png',
    11: 'santacruz.png',
    12: 'scotiabank.png',
    13: 'vimenca.png',
  };

  static Map<int, String> bankStrings = {
    1: 'Banco Ademi',
    2: 'Asociacion Popular de Ahorros y Prestamos',
    3: 'Banesco',
    4: 'Banreservas',
    5: 'Banco BHD Leon',
    6: 'Banco Caribe',
    7: 'Asociacion Cibao de Ahorros y Prestamos',
    8: 'Citibank',
    9: 'Banco Popular Dominicano',
    10: 'Banco Promerica',
    11: 'Banco Santacruz',
    12: 'Scotiabank',
    13: 'Banco Vimenca'
  };

  static IconData parseIconData(String iconString) {
    return icons[iconString]!;
  }

  // static List<Widget> bankContainers = banks
  //     .map((item) => BankContainer(
  //           child: Image.asset(
  //             'assets/$item',
  //             fit: BoxFit.fitHeight,
  //           ),
  //         ))
  //     .toList();
}
