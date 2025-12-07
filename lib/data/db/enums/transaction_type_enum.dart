enum TransactionType { income, expenses, topUp }

extension TransactionTypeX on TransactionType {
  String get value {
    switch (this) {
      case TransactionType.income:
        return 'Income';
      case TransactionType.expenses:
        return 'Expenses';
      case TransactionType.topUp:
        return 'Top-up';
    }
  }

  static TransactionType fromString(String s) {
    switch (s) {
      case 'Income':
        return TransactionType.income;
      case 'Expenses':
        return TransactionType.expenses;
      case 'Top-up':
        return TransactionType.topUp;
      default:
        throw ArgumentError('Unknown TransactionType: $s');
    }
  }
}
