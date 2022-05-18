class Expense {
  final String id;
  final String label;
  final String description;
  final String amount;

  Expense({
    required this.id,
    required this.label,
    required this.description,
    required this.amount,
  });

  Expense copyWith({
    String? id,
    String? label,
    String? description,
    String? amount,
  }) {
    return Expense(
        id: id ?? this.id,
        label: label ?? this.label,
        description: description ?? this.description,
        amount: amount ?? this.amount);
  }
}
