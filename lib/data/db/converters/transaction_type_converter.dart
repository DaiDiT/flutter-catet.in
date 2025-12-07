import 'package:drift/drift.dart';
import 'package:catetin/data/db/enums/transaction_type_enum.dart';

class TransactionTypeConverter extends TypeConverter<TransactionType, String> {
  const TransactionTypeConverter();

  @override
  TransactionType fromSql(String fromDb) => TransactionTypeX.fromString(fromDb);

  @override
  String toSql(TransactionType value) => value.value;
}
