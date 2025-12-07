import 'package:catetin/domain/models/funding_source_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'funding_source_state.freezed.dart';

@freezed
abstract class FundingSourceState with _$FundingSourceState {
  factory FundingSourceState({
    @Default(false) bool isLoading,
    @Default([]) List<FundingSourceModel> fundingSources,
    FundingSourceModel? fundingSource,
    String? error,
  }) = _FundingSourceModel;
}
