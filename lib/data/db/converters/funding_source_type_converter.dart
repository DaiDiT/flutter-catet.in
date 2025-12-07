import 'package:drift/drift.dart';
import 'package:catetin/data/db/enums/funding_source_type_enum.dart';

class FundingSourceTypeConverter extends TypeConverter<FundingSourceType, String> {
  const FundingSourceTypeConverter();

  @override
  FundingSourceType fromSql(String fromDb) => FundingSourceTypeX.fromString(fromDb);

  @override
  String toSql(FundingSourceType value) => value.value;
}
