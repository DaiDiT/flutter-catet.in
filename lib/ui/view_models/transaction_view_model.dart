import 'package:catetin/data/repository/transaction_repository.dart';
import 'package:catetin/ui/view_models/state/transaction_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TransactionViewModel extends Notifier<TransactionState> {
  @override
  TransactionState build() {
    return TransactionState();
  }

  Future<void> getAllTransactions() async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final transactions = await ref.read(transactionRepositoryProvider).getAllTransactions();
      state = state.copyWith(isLoading: false, transactions: transactions);
    } catch (e, s) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load transactions: $e\n$s',
      );
    }
  }

  Future<void> getTransactionById(int id) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final transaction = await ref.read(transactionRepositoryProvider).getOneTransactionById(id);
      state = state.copyWith(isLoading: false, transaction: transaction);
    } catch (e, s) {
      state = state.copyWith(isLoading: false, error: 'Failed to load transaction: $e\n$s');
    }
  }
}
