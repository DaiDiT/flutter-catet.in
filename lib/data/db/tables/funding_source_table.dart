import 'package:drift/drift.dart';
import 'package:catetin/data/db/converters/funding_source_type_converter.dart';

class FundingSourceTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 20)();
  TextColumn get description => text().nullable().withLength(min: 0, max: 30)();
  TextColumn get type => text().map(const FundingSourceTypeConverter())();
  IntColumn get balance => integer().withDefault(const Constant(0))();
  IntColumn get monthlyFee => integer().nullable()(); // khusus account
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();

  TextColumn get color => text().nullable()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}
