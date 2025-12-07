import 'package:catetin/data/db/app_database.dart';
import 'package:catetin/data/db/enums/funding_source_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'funding_source_model.freezed.dart';

@freezed
abstract class FundingSourceModel with _$FundingSourceModel {
  factory FundingSourceModel({
    @Default(0) int id,
    required String name,
    String? description,
    required FundingSourceType type,
    required int balance,
    int? monthlyFee,
    required bool isActive,
    String? color,
    required DateTime createdAt,
  }) = _FundingSourceModel;

  factory FundingSourceModel.fromEntity(FundingSourceTableData k) {
    return FundingSourceModel(
      id: k.id,
      name: k.name,
      description: k.description,
      type: k.type,
      balance: k.balance,
      monthlyFee: k.monthlyFee,
      isActive: k.isActive,
      color: k.color,
      createdAt: k.createdAt,
    );
  }
}
