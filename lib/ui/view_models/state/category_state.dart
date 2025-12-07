import 'package:catetin/domain/models/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_state.freezed.dart';

@freezed
abstract class CategoryState with _$CategoryState {
  factory CategoryState({
    @Default(false) bool isLoading,
    @Default([]) List<CategoryModel> categories,
    String? error,
  }) = _CategoryModel;
}
