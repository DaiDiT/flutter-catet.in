// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_dao.dart';

// ignore_for_file: type=lint
mixin _$TransactionDaoMixin on DatabaseAccessor<AppDatabase> {
  $FundingSourceTableTable get fundingSourceTable =>
      attachedDatabase.fundingSourceTable;
  $CategoryTableTable get categoryTable => attachedDatabase.categoryTable;
  $TransactionTableTable get transactionTable =>
      attachedDatabase.transactionTable;
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$transactionDaoHash() => r'48ea95b9fcf7511052aee36292a05f55970edf5a';

/// See also [transactionDao].
@ProviderFor(transactionDao)
final transactionDaoProvider = AutoDisposeProvider<TransactionDao>.internal(
  transactionDao,
  name: r'transactionDaoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$transactionDaoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TransactionDaoRef = AutoDisposeProviderRef<TransactionDao>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
