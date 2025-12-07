import 'package:catetin/data/db/app_database.dart';
import 'package:catetin/data/db/dao/transaction_dao.dart';
import 'package:catetin/domain/models/transaction_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'transaction_repository.g.dart';

@riverpod
TransactionRepository transactionRepository(Ref ref) {
  final transactionDao = ref.watch(transactionDaoProvider);

  return TransactionRepository(transactionDao);
}

class TransactionRepository {
  final TransactionDao transactionDao;

  TransactionRepository(this.transactionDao);

  Future<List<TransactionModel>> getAllTransactions() async {
    try {
      final data = await transactionDao.getAllTransactions();
      return data.map((e) => TransactionModel.fromEntity(e)).toList();
    } catch (e, s) {
      throw Exception('Error fetching transactions: $e\n$s');
    }
  }

  Stream<List<TransactionModel>> watchAllTransactions() {
    try {
      return transactionDao
          .watchAllTransactions()
          .map(
            (data) => data.map((e) => TransactionModel.fromEntity(e)).toList(),
          )
          .handleError((e, s) {
            throw Exception('Error watching transactions: $e\n$s');
          });
    } catch (e, s) {
      return Stream.error(Exception('Error watching transactions: $e\n$s'));
    }
  }

  Future<List<TransactionModel>> getTheLast7DaysTransactions() async {
    try {
      final data = await transactionDao.getTheLast7DaysTransactions();
      return data.map((e) => TransactionModel.fromEntity(e)).toList();
    } catch (e, s) {
      throw Exception('Error fetching transactions: $e\n$s');
    }
  }

  Stream<List<TransactionModel>> watchTheLast7DaysTransactions() {
    try {
      return transactionDao
          .watchTheLast7DaysTransactions()
          .map(
            (data) => data.map((e) => TransactionModel.fromEntity(e)).toList(),
          )
          .handleError((e, s) {
            throw Exception('Error watching transactions: $e\n$s');
          });
    } catch (e, s) {
      return Stream.error(Exception('Error watching transactions: $e\n$s'));
    }
  }

  Future<List<TransactionModel>> getByMonthYear(int month, int year) async {
    try {
      final data = await transactionDao.getByMonthYear(month, year);
      return data.map((e) => TransactionModel.fromEntity(e)).toList();
    } catch (e, s) {
      throw Exception('Error fetching transactions: $e\n$s');
    }
  }

  Stream<int> watchTotalByMonthYear(int month, int year) {
    try {
      return transactionDao.watchTotalByMonthYear(month, year).handleError((
        e,
        s,
      ) {
        throw Exception('Error watching total transaction: $e\n$s');
      });
    } catch (e, s) {
      return Stream.error(
        Exception('Error watching total transaction: $e\n$s'),
      );
    }
  }

  Future<List<TransactionModel>> getTransactionsByFundingSourceId(int id) async {
    try {
      final data = await transactionDao.getTransactionsByFundingSourceId(id);
      return data.map((e) => TransactionModel.fromEntity(e)).toList();
    } catch (e, s) {
      throw Exception('Error fetching transactions: $e\n$s');
    }
  }

  Future<Map<int, List<int>>> getYearsWithMonths() async {
    try {
      final data = await transactionDao.getYearsWithMonths();
      return data;
    } catch (e, s) {
      throw Exception('Error fetching years & months: $e\n$s');
    }
  }

  Future<int> insertOneTransaction(TransactionTableCompanion ttc) async {
    try {
      final data = await transactionDao.insertOneTransaction(ttc);
      return data;
    } catch (e, s) {
      throw Exception('Error inserting transaction: $e\n$s');
    }
  }

  Future<TransactionModel> getOneTransactionById(int id) async {
    try {
      final data = await transactionDao.getOneTransactionById(id);
      return TransactionModel.fromEntity(data);
    } catch (e, s) {
      throw Exception('Error fetching transactions: $e\n$s');
    }
  }

  Stream<TransactionModel> watchOneTransactionById(int id) {
    try {
      return transactionDao
          .watchOneTransactionById(id)
          .map((data) => TransactionModel.fromEntity(data))
          .handleError((e, s) {
            throw Exception('Error watching transaction: $e\n$s');
          });
    } catch (e, s) {
      return Stream.error(Exception('Error watching transaction: $e\n$s'));
    }
  }

  Future<bool> updateOneTransaction(TransactionTableCompanion ttc) async {
    try {
      final data = await transactionDao.updateOneTransaction(ttc);
      return data;
    } catch (e, s) {
      throw Exception('Error updating transaction: $e\n$s');
    }
  }

  Future<int> deleteOneTransaction(int id) async {
    try {
      final data = await transactionDao.deleteOneTransaction(id);
      return data;
    } catch (e, s) {
      throw Exception('Error deleting transaction: $e\n$s');
    }
  }
}
