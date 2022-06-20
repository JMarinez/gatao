import 'package:flutter/material.dart';
import 'package:gatao/src/components/bank_container.dart';

import '../util/utils.dart';

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final gridItems = [
    //   BankContainer(
    //     child: Image.asset(
    //       'assets/popular.png',
    //       fit: BoxFit.fitHeight,
    //     ),
    //   ),
    //   BankContainer(
    //     child: Image.asset(
    //       'assets/ademi.png',
    //       fit: BoxFit.fitHeight,
    //     ),
    //   ),
    //   BankContainer(
    //     child: Image.asset(
    //       'assets/apap.png',
    //       fit: BoxFit.fitHeight,
    //     ),
    //   ),
    //   BankContainer(
    //     child: Image.asset(
    //       'assets/banesco.png',
    //       fit: BoxFit.fitHeight,
    //     ),
    //   ),
    //   BankContainer(
    //     child: Image.asset(
    //       'assets/banreservas.png',
    //       fit: BoxFit.fitHeight,
    //     ),
    //   ),
    //   BankContainer(
    //     child: Image.asset(
    //       'assets/bhd.png',
    //       fit: BoxFit.fitHeight,
    //     ),
    //   ),
    //   BankContainer(
    //     child: Image.asset(
    //       'assets/caribe.png',
    //       fit: BoxFit.fitHeight,
    //     ),
    //   ),
    //   BankContainer(
    //     child: Image.asset(
    //       'assets/cibao.png',
    //       fit: BoxFit.fitHeight,
    //     ),
    //   ),
    // ];

    final gridItems = [
      Image.asset(
        'assets/popular.png',
        fit: BoxFit.fitHeight,
      ),
      Image.asset(
        'assets/ademi.png',
        fit: BoxFit.fitHeight,
      ),
      Image.asset(
        'assets/apap.png',
        fit: BoxFit.fitHeight,
      ),
      Image.asset(
        'assets/banesco.png',
        fit: BoxFit.fitHeight,
      ),
      Image.asset(
        'assets/banreservas.png',
        fit: BoxFit.fitHeight,
      ),
      Image.asset(
        'assets/bhd.png',
        fit: BoxFit.fitHeight,
      ),
      Image.asset(
        'assets/caribe.png',
        fit: BoxFit.fitHeight,
      ),
      Image.asset(
        'assets/cibao.png',
        fit: BoxFit.fitHeight,
      ),
    ];

    return GridView.count(
      crossAxisCount: 4,
      children: gridItems,
    );
  }
}
