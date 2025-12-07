import 'package:catetin/data/db/app_database.dart';
import 'package:catetin/data/db/tables/transaction_table.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'transaction_dao.g.dart';

@riverpod
TransactionDao transactionDao(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return TransactionDao(db);
}

@DriftAccessor(tables: [TransactionTable])
class TransactionDao extends DatabaseAccessor<AppDatabase>
    with _$TransactionDaoMixin {
  TransactionDao(super.db);

  Future<List<TransactionTableData>> getAllTransactions() {
    return select(transactionTable).get();
  }

  Stream<List<TransactionTableData>> watchAllTransactions() {
    return (select(transactionTable)..orderBy([
          (ttc) => OrderingTerm(expression: ttc.createdAt, mode: OrderingMode.desc),
        ]))
        .watch();
  }

  Future<List<TransactionTableData>> getTheLast7DaysTransactions() {
    final now = DateTime.now();
    final startOfMonth = DateTime(now.year, now.month, 1);
    final sevenDaysAgo = now.subtract(const Duration(days: 6));

    final effectiveStart = sevenDaysAgo.isBefore(startOfMonth)
        ? startOfMonth
        : sevenDaysAgo;

    return (select(transactionTable)
          ..where((ttc) => ttc.createdAt.isBiggerOrEqualValue(effectiveStart))
          ..where((ttc) => ttc.createdAt.month.equals(now.month))
          ..orderBy([
            (ttc) =>
                OrderingTerm(expression: ttc.createdAt, mode: OrderingMode.desc),
          ]))
        .get();
  }

  Stream<List<TransactionTableData>> watchTheLast7DaysTransactions() {
    final now = DateTime.now();
    final startOfMonth = DateTime(now.year, now.month, 1);
    final sevenDaysAgo = now.subtract(const Duration(days: 6));

    final effectiveStart = sevenDaysAgo.isBefore(startOfMonth)
        ? startOfMonth
        : sevenDaysAgo;

    return (select(transactionTable)
          ..where((ttc) => ttc.createdAt.isBiggerOrEqualValue(effectiveStart))
          ..where((ttc) => ttc.createdAt.month.equals(now.month))
          ..orderBy([
            (ttc) =>
                OrderingTerm(expression: ttc.createdAt, mode: OrderingMode.desc),
          ]))
        .watch();
  }

  Future<List<TransactionTableData>> getByMonthYear(int month, int year) {
    return (select(transactionTable)
          ..where(
            (ttc) =>
                ttc.createdAt.month.equals(month) & ttc.createdAt.year.equals(year),
          )
          ..orderBy([
            (ttc) =>
                OrderingTerm(expression: ttc.createdAt, mode: OrderingMode.desc),
          ]))
        .get();
  }

  Stream<int> watchTotalByMonthYear(int month, int year) {
    final total = transactionTable.total.sum();

    return (selectOnly(transactionTable)
          ..addColumns([total])
          ..where(
            transactionTable.createdAt.month.equals(month) &
                transactionTable.createdAt.year.equals(year),
          ))
        .watchSingle()
        .map((row) => row.read(total) ?? 0);
  }

  Future<List<TransactionTableData>> getTransactionsByFundingSourceId(int id) {
    return (select(transactionTable)
          ..where((ttc) => ttc.fundingSource.equals(id))
          ..orderBy([
            (ttc) =>
                OrderingTerm(expression: ttc.createdAt, mode: OrderingMode.desc),
          ]))
        .get();
  }

  Future<Map<int, List<int>>> getYearsWithMonths() async {
    final query = await customSelect(
      '''
      SELECT 
        strftime('%Y', created_at) AS year,
        strftime('%m', created_at) AS month
      FROM transaction_table
      GROUP BY year, month
      ORDER BY year DESC, month DESC
      ''',
      readsFrom: {transactionTable},
    ).get();

    final Map<int, List<int>> result = {};

    for (final row in query) {
      final year = int.parse(row.data['year'] as String);
      final month = int.parse(row.data['month'] as String);

      result.putIfAbsent(year, () => []);
      result[year]!.add(month);
    }

    return result;
  }

  Future<int> insertOneTransaction(TransactionTableCompanion ttc) {
    return into(transactionTable).insert(ttc);
  }

  Future<TransactionTableData> getOneTransactionById(int id) {
    return (select(transactionTable)..where((ttc) => ttc.id.equals(id))).getSingle();
  }

  Stream<TransactionTableData> watchOneTransactionById(int id) {
    return (select(transactionTable)..where((ttc) => ttc.id.equals(id))).watchSingle();
  }

  Future<bool> updateOneTransaction(TransactionTableCompanion ttc) {
    return update(transactionTable).replace(ttc);
  }

  Future<int> deleteOneTransaction(int id) {
    return (delete(transactionTable)..where((ttc) => ttc.id.equals(id))).go();
  }
}
