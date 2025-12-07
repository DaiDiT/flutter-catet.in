import 'package:catetin/data/db/app_database.dart';
import 'package:catetin/data/db/tables/funding_source_table.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'funding_source_dao.g.dart';

@riverpod
FundingSourceDao fundingSourceDao(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return FundingSourceDao(db);
}

@DriftAccessor(tables: [FundingSourceTable])
class FundingSourceDao extends DatabaseAccessor<AppDatabase>
    with _$FundingSourceDaoMixin {
  FundingSourceDao(super.db);

  Future<List<FundingSourceTableData>> getAllFundingSources() {
    return select(fundingSourceTable).get();
  }

  Stream<List<FundingSourceTableData>> watchAllFundingSources() {
    return (select(fundingSourceTable)..orderBy([
          (t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc),
        ]))
        .watch();
  }

  Stream<int> watchTotalBalance() {
    final total = fundingSourceTable.balance.sum();

    return (selectOnly(
      fundingSourceTable,
    )..addColumns([total])).watchSingle().map((row) => row.read(total) ?? 0);
  }

  Future<int> insertOneFundingSource(FundingSourceTableCompanion fstc) {
    return into(fundingSourceTable).insert(fstc);
  }

  Future<FundingSourceTableData> getOneFundingSourceById(int id) {
    return (select(fundingSourceTable)..where((t) => t.id.equals(id))).getSingle();
  }

  Future<bool> updateOneFundingSource(FundingSourceTableCompanion fstc) {
    return update(fundingSourceTable).replace(fstc);
  }

  Future<int> deleteOneFundingSource(int id) {
    return (delete(fundingSourceTable)..where((t) => t.id.equals(id))).go();
  }
}
