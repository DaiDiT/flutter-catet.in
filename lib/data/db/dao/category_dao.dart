import 'package:catetin/data/db/app_database.dart';
import 'package:catetin/data/db/tables/category_table.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_dao.g.dart';

@riverpod
CategoryDao categoryDao(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return CategoryDao(db);
}

@DriftAccessor(tables: [CategoryTable])
class CategoryDao extends DatabaseAccessor<AppDatabase>
    with _$CategoryDaoMixin {
  CategoryDao(super.db);

  Future<List<CategoryTableData>> getAllCategories() {
    return select(categoryTable).get();
  }

  Stream<List<CategoryTableData>> watchAllCategories() {
    return (select(categoryTable)..orderBy([
          (t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc),
        ]))
        .watch();
  }

  Future<int> insertOneCategory(CategoryTableCompanion ctc) {
    return into(categoryTable).insert(ctc);
  }

  Future<bool> updateOneCategory(CategoryTableCompanion ctc) {
    return update(categoryTable).replace(ctc);
  }

  Future<int> deleteOneCategory(int id) {
    return (delete(categoryTable)..where((t) => t.id.equals(id))).go();
  }
}
