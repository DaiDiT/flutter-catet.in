import 'package:catetin/data/db/app_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';

@freezed
abstract class CategoryModel with _$CategoryModel {
  factory CategoryModel({
    @Default(0) int id,
    required String name,
    required String? color,
    required String? icon,
    required DateTime createdAt,
  }) = _CategoryModel;

  factory CategoryModel.fromEntity(CategoryTableData k) {
    return CategoryModel(
      id: k.id,
      name: k.name,
      color: k.color,
      icon: k.icon,
      createdAt: k.createdAt,
    );
  }
}
