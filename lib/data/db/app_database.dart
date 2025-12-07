import 'package:catetin/data/db/converters/funding_source_type_converter.dart';
import 'package:catetin/data/db/converters/transaction_type_converter.dart';
import 'package:catetin/data/db/enums/funding_source_type_enum.dart';
import 'package:catetin/data/db/enums/transaction_type_enum.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:catetin/data/db/tables/funding_source_table.dart';
import 'package:catetin/data/db/tables/transaction_table.dart';
import 'package:catetin/data/db/tables/category_table.dart';

part 'app_database.g.dart';

@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) {
  final db = AppDatabase();

  ref.onDispose(() {
    db.close();
  });

  return db;
}

@DriftDatabase(tables: [FundingSourceTable, TransactionTable, CategoryTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'catetin');
  }

  @override
  int get schemaVersion => 1;
}
