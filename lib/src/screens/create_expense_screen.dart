import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../models/transaction.dart';

class CreateExpenseScreen extends StatefulWidget {
  final Function(Transaction) onCreate;
  final Function(Transaction) onUpdate;
  final bool isUpdating;
  final Transaction? originalItem;
  const CreateExpenseScreen({
    Key? key,
    required this.onCreate,
    required this.onUpdate,
    this.originalItem,
  })  : isUpdating = (originalItem != null),
        super(key: key);

  @override
  State<CreateExpenseScreen> createState() => _CreateExpenseScreenState();
}

class _CreateExpenseScreenState extends State<CreateExpenseScreen> {
  final descriptionController = TextEditingController();
  final amountController = TextEditingController();

  String description = '';
  String amount = '';

  @override
  void initState() {
    final originalItem = widget.originalItem;

    if (originalItem != null) {
      amountController.text = originalItem.amount;
      descriptionController.text = originalItem.description;
      amount = originalItem.amount;
      description = originalItem.description;
    }

    descriptionController.addListener(() {
      setState(() {
        description = descriptionController.text;
      });
    });

    amountController.addListener(() {
      setState(() {
        amount = amountController.text;
      });
    });

    super.initState();
  }

  @override
  void dispose() {
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
              final _transaciton = Transaction(
                id: widget.originalItem?.id ?? const Uuid().v1(),
                description: description,
                amount: amount,
                icon: '',
                category: Category.shopping,
                type: Type.expense,
              );

              if (widget.isUpdating) {
                widget.onUpdate(_transaciton);
              } else {
                widget.onCreate(_transaciton);
              }
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: Column(
          children: [
            _buildDescriptionField(),
            const SizedBox(height: 10.0),
            _buildAmountField(),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Description'),
        TextField(
          controller: descriptionController,
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
