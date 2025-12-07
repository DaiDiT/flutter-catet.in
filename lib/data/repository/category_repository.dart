import 'package:catetin/data/db/app_database.dart';
import 'package:catetin/data/db/dao/category_dao.dart';
import 'package:catetin/domain/models/category_model.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_repository.g.dart';

@riverpod
CategoryRepository categoryRepository(Ref ref) {
  final categoryDao = ref.watch(categoryDaoProvider);

  return CategoryRepository(categoryDao);
}

class CategoryRepository {
  final CategoryDao categoryDao;

  CategoryRepository(this.categoryDao);

  Future<List<CategoryModel>> getAllCategories() async {
    try {
      final data = await categoryDao.getAllCategories();
      return data.map((e) => CategoryModel.fromEntity(e)).toList();
    } catch (e, s) {
      throw Exception('Error fetching categories: $e\n$s');
    }
  }

  Stream<List<CategoryModel>> watchAllCategories() {
    try {
      return categoryDao
          .watchAllCategories()
          .map((data) => data.map((e) => CategoryModel.fromEntity(e)).toList())
          .handleError((e, s) {
            throw Exception('Error watching categories: $e\n$s');
          });
    } catch (e, s) {
      return Stream.error(Exception('Error watching categories: $e\n$s'));
    }
  }

  Future<int> insertOneCategory(String name, String color, String icon) async {
    try {
      final ctc = CategoryTableCompanion(
        name: Value(name),
        color: Value(color),
        icon: Value(icon)
      );
      final data = await categoryDao.insertOneCategory(ctc);
      return data;
    } catch (e, s) {
      throw Exception('Error inserting category: $e\n$s');
    }
  }

  Future<bool> updateOneCategory(String name, String color, String icon) async {
    try {
      final ctc = CategoryTableCompanion(
        name: Value(name),
        color: Value(color),
        icon: Value(icon)
      );
      final data = await categoryDao.updateOneCategory(ctc);
      return data;
    } catch (e, s) {
      throw Exception('Error updating category: $e\n$s');
    }
  }

  Future<int> deleteOneCategory(int id) async {
    try {
      final data = await categoryDao.deleteOneCategory(id);
      return data;
    } catch (e, s) {
      throw Exception('Error deleting category: $e\n$s');
    }
  }
}
