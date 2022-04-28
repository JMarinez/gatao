import 'package:flutter/material.dart';

import 'package:gatao/src/components/expense_card.dart';
import 'package:gatao/src/models/expense.dart';

class CreateExpenseScreen extends StatefulWidget {
  final Function(Expense) onCreate;
  const CreateExpenseScreen({Key? key, required this.onCreate})
      : super(key: key);

  @override
  State<CreateExpenseScreen> createState() => _CreateExpenseScreenState();
}

class _CreateExpenseScreenState extends State<CreateExpenseScreen> {
  final labelController = TextEditingController();
  final amountController = TextEditingController();

  String label = '';
  String amount = '';

  @override
  void initState() {
    labelController.addListener(() {
      label = labelController.text;
    });

    amountController.addListener(() {
      amount = amountController.text;
    });
    super.initState();
  }

  @override
  void dispose() {
    labelController.dispose();
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              final _expense =
                  Expense(label: label, amount: int.parse(amount).toDouble());

              widget.onCreate(_expense);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: Column(
          children: [
            _buildLabelField(),
            const SizedBox(height: 10.0),
            _buildAmountField(),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }

  Widget _buildLabelField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Expense label'),
        TextField(
          controller: labelController,
        ),
      ],
    );
  }

  Widget _buildAmountField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Amount spent'),
        TextField(
          controller: amountController,
        ),
      ],
    );
  }
}
