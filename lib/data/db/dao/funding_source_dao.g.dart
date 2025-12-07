// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'funding_source_dao.dart';

// ignore_for_file: type=lint
mixin _$FundingSourceDaoMixin on DatabaseAccessor<AppDatabase> {
  $FundingSourceTableTable get fundingSourceTable =>
      attachedDatabase.fundingSourceTable;
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fundingSourceDaoHash() => r'095d57d8d61e30f6ff022e6c36aa4428c61aa935';

/// See also [fundingSourceDao].
@ProviderFor(fundingSourceDao)
final fundingSourceDaoProvider = AutoDisposeProvider<FundingSourceDao>.internal(
  fundingSourceDao,
  name: r'fundingSourceDaoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fundingSourceDaoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FundingSourceDaoRef = AutoDisposeProviderRef<FundingSourceDao>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
