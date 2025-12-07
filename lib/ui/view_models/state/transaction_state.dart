import 'package:catetin/domain/models/transaction_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_state.freezed.dart';

@freezed
abstract class TransactionState with _$TransactionState {
  factory TransactionState({
    @Default(false) bool isLoading,
    @Default([]) List<TransactionModel> transactions,
    TransactionModel? transaction,
    String? error,
  }) = _TransactionModel;
}
