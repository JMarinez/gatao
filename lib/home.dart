import 'package:flutter/material.dart';
import 'package:gatao/src/screens/home_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gatao'),
        backgroundColor: Colors.red[800],
      ),
      body: const HomeScreen(),
    );
  }
}
