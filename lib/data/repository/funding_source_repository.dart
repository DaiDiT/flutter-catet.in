import 'package:catetin/data/db/app_database.dart';
import 'package:catetin/data/db/dao/funding_source_dao.dart';
import 'package:catetin/domain/models/funding_source_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'funding_source_repository.g.dart';

@riverpod
FundingSourceRepository fundingSourceRepository(Ref ref) {
  final fundingSourceDao = ref.watch(fundingSourceDaoProvider);

  return FundingSourceRepository(fundingSourceDao);
}

class FundingSourceRepository {
  final FundingSourceDao fundingSourceDao;

  FundingSourceRepository(this.fundingSourceDao);

  Future<List<FundingSourceModel>> getAllFundingSources() async {
    try {
      final data = await fundingSourceDao.getAllFundingSources();
      return data.map((e) => FundingSourceModel.fromEntity(e)).toList();
    } catch (e, s) {
      throw Exception('Error fetching funding sources: $e\n$s');
    }
  }

  Stream<List<FundingSourceModel>> watchAllFundingSources() {
    try {
      return fundingSourceDao
          .watchAllFundingSources()
          .map(
            (data) =>
                data.map((e) => FundingSourceModel.fromEntity(e)).toList(),
          )
          .handleError((e, s) {
            throw Exception('Error watching funding sources: $e\n$s');
          });
    } catch (e, s) {
      return Stream.error(Exception('Error watching funding sources: $e\n$s'));
    }
  }

  Future<int> insertOneFundingSource(FundingSourceTableCompanion fstc) async {
    try {
      final data = await fundingSourceDao.insertOneFundingSource(fstc);
      return data;
    } catch (e, s) {
      throw Exception('Error inserting sumber dana: $e\n$s');
    }
  }

  Future<FundingSourceModel> getOneFundingSourceById(int id) async {
    try {
      final data = await fundingSourceDao.getOneFundingSourceById(id);
      return FundingSourceModel.fromEntity(data);
    } catch (e, s) {
      throw Exception('Error fetching sumber dana: $e\n$s');
    }
  }

  Future<bool> updateOneFundingSource(FundingSourceTableCompanion fstc) async {
    try {
      final data = await fundingSourceDao.updateOneFundingSource(fstc);
      return data;
    } catch (e, s) {
      throw Exception('Error updating sumber dana: $e\n$s');
    }
  }

  Future<int> deleteOneFundingSource(int id) async {
    try {
      final data = await fundingSourceDao.deleteOneFundingSource(id);
      return data;
    } catch (e, s) {
      throw Exception('Error deleting sumber dana: $e\n$s');
    }
  }
}
