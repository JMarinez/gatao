class Expense {
  final String id;
  final String label;
  final double amount;

  Expense({
    required this.id,
    required this.label,
    required this.amount,
  });

  Expense copyWith({
    String? id,
    String? label,
    double? amount,
  }) {
    return Expense(
        id: id ?? this.id,
        label: label ?? this.label,
        amount: amount ?? this.amount);
  }
}
