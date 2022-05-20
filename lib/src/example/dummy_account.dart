import 'package:gatao/src/models/transaccion.dart';
import 'package:gatao/src/models/wallet.dart';

import '../models/account.dart';

List<Account> dummyAccount = [
  Account(
    wallets: [
      Wallet(
        name: 'Wallet',
        expenses: [
          Transaction(
            id: "1",
            description: 'Netflix subscription',
            amount: '14.99',
            category: Category.subscription,
            type: Type.expense,
          )
        ],
        totalBalance: 0,
      ),
      Wallet(
        name: 'Banco Popular',
        expenses: [
          Transaction(
            id: "1",
            description: 'Netflix subscription',
            amount: '14.99',
            category: Category.subscription,
            type: Type.expense,
          )
        ],
        totalBalance: 0,
      ),
    ],
    totalBalance: 0,
  )
];
