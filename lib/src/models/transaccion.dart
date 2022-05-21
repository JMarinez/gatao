import 'package:flutter/material.dart';

enum Category {
  shopping,
  subscription,
  food,
  transportation,
  bills,
}

enum Type {
  expense,
  income,
  transfer,
}

class Transaction {
  final String id;
  final String description;
  final String amount;
  final String icon;
  final Category category;
  final Type type;

  Transaction({
    required this.id,
    required this.description,
    required this.amount,
    required this.icon,
    required this.category,
    required this.type,
  });

  Transaction copyWith({
    String? id,
    String? description,
    String? amount,
    String? icon,
    Category? category,
    Type? type,
  }) {
    return Transaction(
      id: id ?? this.id,
      description: description ?? this.description,
      amount: amount ?? this.amount,
      icon: icon ?? this.icon,
      category: category ?? this.category,
      type: type ?? this.type,
    );
  }
}
