import 'package:catetin/data/repository/category_repository.dart';
import 'package:catetin/ui/view_models/state/category_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryViewModel extends Notifier<CategoryState> {
  @override
  CategoryState build() {
    return CategoryState();
  }

  Future<void> getAllCategories() async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final categories = await ref.read(categoryRepositoryProvider).getAllCategories();
      state = state.copyWith(isLoading: false, categories: categories);
    } catch (e, s) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load categories: $e\n$s',
      );
    }
  }

  Future<void> insertOneCategory(String name, String color, String icon) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      await ref.read(categoryRepositoryProvider).insertOneCategory(name, color, icon);
      state = state.copyWith(isLoading: false);
    } catch (e, s) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to insert category: $e\n$s',
      );
    }
  }

  Future<void> updateOneCategory(String name, String color, String icon) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      await ref.read(categoryRepositoryProvider).updateOneCategory(name, color, icon);
      state = state.copyWith(isLoading: false);
    } catch (e, s) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to update category: $e\n$s',
      );
    }
  }

  Future<void> deleteOneCategory(int id) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      await ref.read(categoryRepositoryProvider).deleteOneCategory(id);
      state = state.copyWith(isLoading: false);
    } catch (e, s) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to delete category: $e\n$s',
      );
    }
  }
}
