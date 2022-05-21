import 'package:gatao/src/models/transaccion.dart';
import 'package:gatao/src/models/wallet.dart';

import '../models/account.dart';

Account dummyAccount = Account(
  wallets: [
    Wallet(
      name: 'Wallet',
      transacitons: [
        Transaction(
          id: "1",
          description: 'Netflix subscription',
          amount: '14.99',
          icon: '',
          category: Category.subscription,
          type: Type.expense,
        )
      ],
      icon: 'wallet',
      totalBalance: 0,
    ),
    Wallet(
      name: 'Banco Popular',
      transacitons: [
        Transaction(
          id: "1",
          description: 'Netflix subscription',
          amount: '14.99',
          icon: '',
          category: Category.subscription,
          type: Type.expense,
        )
      ],
      icon: 'payment',
      totalBalance: 0,
    ),
    Wallet(
      name: 'Paypal',
      transacitons: [
        Transaction(
          id: "1",
          description: 'Netflix subscription',
          amount: '14.99',
          icon: '',
          category: Category.subscription,
          type: Type.expense,
        )
      ],
      icon: 'paypal',
      totalBalance: 0,
    ),
  ],
  totalBalance: 0,
);
