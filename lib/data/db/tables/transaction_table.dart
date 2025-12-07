import 'package:drift/drift.dart';
import 'package:catetin/data/db/converters/transaction_type_converter.dart';
import 'package:catetin/data/db/tables/funding_source_table.dart';
import 'package:catetin/data/db/tables/category_table.dart';

class TransactionTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  @ReferenceName('fundingSource')
  IntColumn get fundingSource =>
      integer().references(FundingSourceTable, #id, onDelete: KeyAction.setNull)();

  TextColumn get type => text().map(const TransactionTypeConverter())();

  TextColumn get detail => text().withLength(min: 0, max: 20).nullable()();

  @ReferenceName('destination')
  IntColumn get destination => integer().nullable().references(
    FundingSourceTable,
    #id,
    onDelete: KeyAction.setNull,
  )();

  IntColumn get fee => integer()();
  IntColumn get adminFee => integer().nullable()();
  IntColumn get total => integer()();

  IntColumn get category => integer().nullable().references(
    CategoryTable,
    #id,
    onDelete: KeyAction.setNull,
  )();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  // Optional: index untuk query berdasarkan tanggal atau fundingSource
  // @override
  // List<Set<Column>> get indexes => [
  //   {fundingSource},
  //   {category},
  // ];
}
