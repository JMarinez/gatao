import 'package:flutter/material.dart';
import 'package:gatao/src/screens/create_expense_screen.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildActivityBody(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CreateExpenseScreen()));
        },
      ),
    );
  }

  Widget _buildActivityBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/receipt.png'),
        const Text('No recent activity', style: TextStyle(fontSize: 24.0)),
        const Text('Tap the + to add your recent expenses!'),
      ],
    );
  }
}
