import 'package:flutter/material.dart';
import 'package:gatao/src/screens/expenses_screen.dart';
import 'package:gatao/src/screens/home_screen.dart';
import 'package:gatao/src/screens/profile_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 1;

  static List pages = [
    const ProfileScreen(),
    const HomeScreen(),
    const ExpensesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gatao'),
        backgroundColor: Colors.red[800],
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(
              icon: Icon(Icons.payments), label: 'Expenses'),
        ],
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
