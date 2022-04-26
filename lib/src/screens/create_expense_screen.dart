import 'package:flutter/material.dart';

class CreateExpenseScreen extends StatelessWidget {
  const CreateExpenseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Text('data'),
          Text('data'),
          Text('data'),
        ],
      ),
    );
  }

  Widget _buildLabelField() {
    return TextField();
  }

  Widget _buildAmountField() {
    return TextField();
  }
}
