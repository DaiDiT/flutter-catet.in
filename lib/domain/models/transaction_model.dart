import 'package:catetin/data/db/app_database.dart';
import 'package:catetin/data/db/enums/transaction_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';

@freezed
abstract class TransactionModel with _$TransactionModel {
  factory TransactionModel({
    @Default(0) int id,
    required int fundingSource,
    required TransactionType type,
    String? detail,
    int? destination,
    required int fee,
    int? adminFee,
    required int total,
    int? category,
    required DateTime createdAt,
  }) = _TransactionModel;

  factory TransactionModel.fromEntity(TransactionTableData k) {
    return TransactionModel(
      id: k.id,
      fundingSource: k.fundingSource,
      type: k.type,
      detail: k.detail,
      destination: k.destination,
      fee: k.fee,
      adminFee: k.adminFee,
      total: k.total,
      category: k.category,
      createdAt: k.createdAt,
    );
  }
}
