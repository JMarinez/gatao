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
  final Category category;
  final Type type;

  Transaction({
    required this.id,
    required this.description,
    required this.amount,
    required this.category,
    required this.type,
  });

  Transaction copyWith({
    String? id,
    String? description,
    String? amount,
    Category? category,
    Type? type,
  }) {
    return Transaction(
      id: id ?? this.id,
      description: description ?? this.description,
      amount: amount ?? this.amount,
      category: category ?? this.category,
      type: type ?? this.type,
    );
  }
}
