import '../models/transaction.dart';
import '../models/wallet.dart';
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
      totalBalance: 2000,
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
      totalBalance: 15000,
    ),
    Wallet(
      name: 'Banco Promerica',
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
      totalBalance: 10000,
    ),
    Wallet(
      name: 'Banco BHD Leon',
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
      totalBalance: 7500,
    ),
    Wallet(
      name: 'Scotiabank',
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
      totalBalance: 5000,
    ),
    Wallet(
      name: 'Banco Lopez de Haro',
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
      totalBalance: 2500,
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
      totalBalance: 7000,
    ),
  ],
  totalBalance: 0,
);
