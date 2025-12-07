// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $FundingSourceTableTable extends FundingSourceTable
    with TableInfo<$FundingSourceTableTable, FundingSourceTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FundingSourceTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 20,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 0,
      maxTextLength: 30,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  late final GeneratedColumnWithTypeConverter<FundingSourceType, String> type =
      GeneratedColumn<String>(
        'type',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<FundingSourceType>(
        $FundingSourceTableTable.$convertertype,
      );
  static const VerificationMeta _balanceMeta = const VerificationMeta(
    'balance',
  );
  @override
  late final GeneratedColumn<int> balance = GeneratedColumn<int>(
    'balance',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _monthlyFeeMeta = const VerificationMeta(
    'monthlyFee',
  );
  @override
  late final GeneratedColumn<int> monthlyFee = GeneratedColumn<int>(
    'monthly_fee',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
    'color',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    description,
    type,
    balance,
    monthlyFee,
    isActive,
    color,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'funding_source_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<FundingSourceTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('balance')) {
      context.handle(
        _balanceMeta,
        balance.isAcceptableOrUnknown(data['balance']!, _balanceMeta),
      );
    }
    if (data.containsKey('monthly_fee')) {
      context.handle(
        _monthlyFeeMeta,
        monthlyFee.isAcceptableOrUnknown(data['monthly_fee']!, _monthlyFeeMeta),
      );
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    if (data.containsKey('color')) {
      context.handle(
        _colorMeta,
        color.isAcceptableOrUnknown(data['color']!, _colorMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FundingSourceTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FundingSourceTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      type: $FundingSourceTableTable.$convertertype.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}type'],
        )!,
      ),
      balance: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}balance'],
      )!,
      monthlyFee: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}monthly_fee'],
      ),
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      color: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}color'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $FundingSourceTableTable createAlias(String alias) {
    return $FundingSourceTableTable(attachedDatabase, alias);
  }

  static TypeConverter<FundingSourceType, String> $convertertype =
      const FundingSourceTypeConverter();
}

class FundingSourceTableData extends DataClass
    implements Insertable<FundingSourceTableData> {
  final int id;
  final String name;
  final String? description;
  final FundingSourceType type;
  final int balance;
  final int? monthlyFee;
  final bool isActive;
  final String? color;
  final DateTime createdAt;
  const FundingSourceTableData({
    required this.id,
    required this.name,
    this.description,
    required this.type,
    required this.balance,
    this.monthlyFee,
    required this.isActive,
    this.color,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    {
      map['type'] = Variable<String>(
        $FundingSourceTableTable.$convertertype.toSql(type),
      );
    }
    map['balance'] = Variable<int>(balance);
    if (!nullToAbsent || monthlyFee != null) {
      map['monthly_fee'] = Variable<int>(monthlyFee);
    }
    map['is_active'] = Variable<bool>(isActive);
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<String>(color);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  FundingSourceTableCompanion toCompanion(bool nullToAbsent) {
    return FundingSourceTableCompanion(
      id: Value(id),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      type: Value(type),
      balance: Value(balance),
      monthlyFee: monthlyFee == null && nullToAbsent
          ? const Value.absent()
          : Value(monthlyFee),
      isActive: Value(isActive),
      color: color == null && nullToAbsent
          ? const Value.absent()
          : Value(color),
      createdAt: Value(createdAt),
    );
  }

  factory FundingSourceTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FundingSourceTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      type: serializer.fromJson<FundingSourceType>(json['type']),
      balance: serializer.fromJson<int>(json['balance']),
      monthlyFee: serializer.fromJson<int?>(json['monthlyFee']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      color: serializer.fromJson<String?>(json['color']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'type': serializer.toJson<FundingSourceType>(type),
      'balance': serializer.toJson<int>(balance),
      'monthlyFee': serializer.toJson<int?>(monthlyFee),
      'isActive': serializer.toJson<bool>(isActive),
      'color': serializer.toJson<String?>(color),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  FundingSourceTableData copyWith({
    int? id,
    String? name,
    Value<String?> description = const Value.absent(),
    FundingSourceType? type,
    int? balance,
    Value<int?> monthlyFee = const Value.absent(),
    bool? isActive,
    Value<String?> color = const Value.absent(),
    DateTime? createdAt,
  }) => FundingSourceTableData(
    id: id ?? this.id,
    name: name ?? this.name,
    description: description.present ? description.value : this.description,
    type: type ?? this.type,
    balance: balance ?? this.balance,
    monthlyFee: monthlyFee.present ? monthlyFee.value : this.monthlyFee,
    isActive: isActive ?? this.isActive,
    color: color.present ? color.value : this.color,
    createdAt: createdAt ?? this.createdAt,
  );
  FundingSourceTableData copyWithCompanion(FundingSourceTableCompanion data) {
    return FundingSourceTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
      type: data.type.present ? data.type.value : this.type,
      balance: data.balance.present ? data.balance.value : this.balance,
      monthlyFee: data.monthlyFee.present
          ? data.monthlyFee.value
          : this.monthlyFee,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      color: data.color.present ? data.color.value : this.color,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FundingSourceTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('balance: $balance, ')
          ..write('monthlyFee: $monthlyFee, ')
          ..write('isActive: $isActive, ')
          ..write('color: $color, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    description,
    type,
    balance,
    monthlyFee,
    isActive,
    color,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FundingSourceTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.type == this.type &&
          other.balance == this.balance &&
          other.monthlyFee == this.monthlyFee &&
          other.isActive == this.isActive &&
          other.color == this.color &&
          other.createdAt == this.createdAt);
}

class FundingSourceTableCompanion
    extends UpdateCompanion<FundingSourceTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> description;
  final Value<FundingSourceType> type;
  final Value<int> balance;
  final Value<int?> monthlyFee;
  final Value<bool> isActive;
  final Value<String?> color;
  final Value<DateTime> createdAt;
  const FundingSourceTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.type = const Value.absent(),
    this.balance = const Value.absent(),
    this.monthlyFee = const Value.absent(),
    this.isActive = const Value.absent(),
    this.color = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  FundingSourceTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.description = const Value.absent(),
    required FundingSourceType type,
    this.balance = const Value.absent(),
    this.monthlyFee = const Value.absent(),
    this.isActive = const Value.absent(),
    this.color = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : name = Value(name),
       type = Value(type);
  static Insertable<FundingSourceTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? type,
    Expression<int>? balance,
    Expression<int>? monthlyFee,
    Expression<bool>? isActive,
    Expression<String>? color,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (type != null) 'type': type,
      if (balance != null) 'balance': balance,
      if (monthlyFee != null) 'monthly_fee': monthlyFee,
      if (isActive != null) 'is_active': isActive,
      if (color != null) 'color': color,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  FundingSourceTableCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String?>? description,
    Value<FundingSourceType>? type,
    Value<int>? balance,
    Value<int?>? monthlyFee,
    Value<bool>? isActive,
    Value<String?>? color,
    Value<DateTime>? createdAt,
  }) {
    return FundingSourceTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      type: type ?? this.type,
      balance: balance ?? this.balance,
      monthlyFee: monthlyFee ?? this.monthlyFee,
      isActive: isActive ?? this.isActive,
      color: color ?? this.color,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(
        $FundingSourceTableTable.$convertertype.toSql(type.value),
      );
    }
    if (balance.present) {
      map['balance'] = Variable<int>(balance.value);
    }
    if (monthlyFee.present) {
      map['monthly_fee'] = Variable<int>(monthlyFee.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FundingSourceTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('balance: $balance, ')
          ..write('monthlyFee: $monthlyFee, ')
          ..write('isActive: $isActive, ')
          ..write('color: $color, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $CategoryTableTable extends CategoryTable
    with TableInfo<$CategoryTableTable, CategoryTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoryTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 20,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
    'color',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _iconMeta = const VerificationMeta('icon');
  @override
  late final GeneratedColumn<String> icon = GeneratedColumn<String>(
    'icon',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, color, icon, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'category_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<CategoryTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
        _colorMeta,
        color.isAcceptableOrUnknown(data['color']!, _colorMeta),
      );
    }
    if (data.containsKey('icon')) {
      context.handle(
        _iconMeta,
        icon.isAcceptableOrUnknown(data['icon']!, _iconMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CategoryTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CategoryTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      color: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}color'],
      ),
      icon: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}icon'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $CategoryTableTable createAlias(String alias) {
    return $CategoryTableTable(attachedDatabase, alias);
  }
}

class CategoryTableData extends DataClass
    implements Insertable<CategoryTableData> {
  final int id;
  final String name;
  final String? color;
  final String? icon;
  final DateTime createdAt;
  const CategoryTableData({
    required this.id,
    required this.name,
    this.color,
    this.icon,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<String>(color);
    }
    if (!nullToAbsent || icon != null) {
      map['icon'] = Variable<String>(icon);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  CategoryTableCompanion toCompanion(bool nullToAbsent) {
    return CategoryTableCompanion(
      id: Value(id),
      name: Value(name),
      color: color == null && nullToAbsent
          ? const Value.absent()
          : Value(color),
      icon: icon == null && nullToAbsent ? const Value.absent() : Value(icon),
      createdAt: Value(createdAt),
    );
  }

  factory CategoryTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoryTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      color: serializer.fromJson<String?>(json['color']),
      icon: serializer.fromJson<String?>(json['icon']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'color': serializer.toJson<String?>(color),
      'icon': serializer.toJson<String?>(icon),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  CategoryTableData copyWith({
    int? id,
    String? name,
    Value<String?> color = const Value.absent(),
    Value<String?> icon = const Value.absent(),
    DateTime? createdAt,
  }) => CategoryTableData(
    id: id ?? this.id,
    name: name ?? this.name,
    color: color.present ? color.value : this.color,
    icon: icon.present ? icon.value : this.icon,
    createdAt: createdAt ?? this.createdAt,
  );
  CategoryTableData copyWithCompanion(CategoryTableCompanion data) {
    return CategoryTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      color: data.color.present ? data.color.value : this.color,
      icon: data.icon.present ? data.icon.value : this.icon,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CategoryTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('icon: $icon, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, color, icon, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoryTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.color == this.color &&
          other.icon == this.icon &&
          other.createdAt == this.createdAt);
}

class CategoryTableCompanion extends UpdateCompanion<CategoryTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> color;
  final Value<String?> icon;
  final Value<DateTime> createdAt;
  const CategoryTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.color = const Value.absent(),
    this.icon = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  CategoryTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.color = const Value.absent(),
    this.icon = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : name = Value(name);
  static Insertable<CategoryTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? color,
    Expression<String>? icon,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (color != null) 'color': color,
      if (icon != null) 'icon': icon,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  CategoryTableCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String?>? color,
    Value<String?>? icon,
    Value<DateTime>? createdAt,
  }) {
    return CategoryTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      icon: icon ?? this.icon,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String>(icon.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoryTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('icon: $icon, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $TransactionTableTable extends TransactionTable
    with TableInfo<$TransactionTableTable, TransactionTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransactionTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _fundingSourceMeta = const VerificationMeta(
    'fundingSource',
  );
  @override
  late final GeneratedColumn<int> fundingSource = GeneratedColumn<int>(
    'funding_source',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES funding_source_table (id) ON DELETE SET NULL',
    ),
  );
  @override
  late final GeneratedColumnWithTypeConverter<TransactionType, String> type =
      GeneratedColumn<String>(
        'type',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<TransactionType>($TransactionTableTable.$convertertype);
  static const VerificationMeta _detailMeta = const VerificationMeta('detail');
  @override
  late final GeneratedColumn<String> detail = GeneratedColumn<String>(
    'detail',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 0,
      maxTextLength: 20,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _destinationMeta = const VerificationMeta(
    'destination',
  );
  @override
  late final GeneratedColumn<int> destination = GeneratedColumn<int>(
    'destination',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES funding_source_table (id) ON DELETE SET NULL',
    ),
  );
  static const VerificationMeta _feeMeta = const VerificationMeta('fee');
  @override
  late final GeneratedColumn<int> fee = GeneratedColumn<int>(
    'fee',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _adminFeeMeta = const VerificationMeta(
    'adminFee',
  );
  @override
  late final GeneratedColumn<int> adminFee = GeneratedColumn<int>(
    'admin_fee',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _totalMeta = const VerificationMeta('total');
  @override
  late final GeneratedColumn<int> total = GeneratedColumn<int>(
    'total',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<int> category = GeneratedColumn<int>(
    'category',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES category_table (id) ON DELETE SET NULL',
    ),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    fundingSource,
    type,
    detail,
    destination,
    fee,
    adminFee,
    total,
    category,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transaction_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<TransactionTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('funding_source')) {
      context.handle(
        _fundingSourceMeta,
        fundingSource.isAcceptableOrUnknown(
          data['funding_source']!,
          _fundingSourceMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_fundingSourceMeta);
    }
    if (data.containsKey('detail')) {
      context.handle(
        _detailMeta,
        detail.isAcceptableOrUnknown(data['detail']!, _detailMeta),
      );
    }
    if (data.containsKey('destination')) {
      context.handle(
        _destinationMeta,
        destination.isAcceptableOrUnknown(
          data['destination']!,
          _destinationMeta,
        ),
      );
    }
    if (data.containsKey('fee')) {
      context.handle(
        _feeMeta,
        fee.isAcceptableOrUnknown(data['fee']!, _feeMeta),
      );
    } else if (isInserting) {
      context.missing(_feeMeta);
    }
    if (data.containsKey('admin_fee')) {
      context.handle(
        _adminFeeMeta,
        adminFee.isAcceptableOrUnknown(data['admin_fee']!, _adminFeeMeta),
      );
    }
    if (data.containsKey('total')) {
      context.handle(
        _totalMeta,
        total.isAcceptableOrUnknown(data['total']!, _totalMeta),
      );
    } else if (isInserting) {
      context.missing(_totalMeta);
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TransactionTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TransactionTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      fundingSource: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}funding_source'],
      )!,
      type: $TransactionTableTable.$convertertype.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}type'],
        )!,
      ),
      detail: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}detail'],
      ),
      destination: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}destination'],
      ),
      fee: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}fee'],
      )!,
      adminFee: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}admin_fee'],
      ),
      total: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total'],
      )!,
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}category'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $TransactionTableTable createAlias(String alias) {
    return $TransactionTableTable(attachedDatabase, alias);
  }

  static TypeConverter<TransactionType, String> $convertertype =
      const TransactionTypeConverter();
}

class TransactionTableData extends DataClass
    implements Insertable<TransactionTableData> {
  final int id;
  final int fundingSource;
  final TransactionType type;
  final String? detail;
  final int? destination;
  final int fee;
  final int? adminFee;
  final int total;
  final int? category;
  final DateTime createdAt;
  const TransactionTableData({
    required this.id,
    required this.fundingSource,
    required this.type,
    this.detail,
    this.destination,
    required this.fee,
    this.adminFee,
    required this.total,
    this.category,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['funding_source'] = Variable<int>(fundingSource);
    {
      map['type'] = Variable<String>(
        $TransactionTableTable.$convertertype.toSql(type),
      );
    }
    if (!nullToAbsent || detail != null) {
      map['detail'] = Variable<String>(detail);
    }
    if (!nullToAbsent || destination != null) {
      map['destination'] = Variable<int>(destination);
    }
    map['fee'] = Variable<int>(fee);
    if (!nullToAbsent || adminFee != null) {
      map['admin_fee'] = Variable<int>(adminFee);
    }
    map['total'] = Variable<int>(total);
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<int>(category);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  TransactionTableCompanion toCompanion(bool nullToAbsent) {
    return TransactionTableCompanion(
      id: Value(id),
      fundingSource: Value(fundingSource),
      type: Value(type),
      detail: detail == null && nullToAbsent
          ? const Value.absent()
          : Value(detail),
      destination: destination == null && nullToAbsent
          ? const Value.absent()
          : Value(destination),
      fee: Value(fee),
      adminFee: adminFee == null && nullToAbsent
          ? const Value.absent()
          : Value(adminFee),
      total: Value(total),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      createdAt: Value(createdAt),
    );
  }

  factory TransactionTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TransactionTableData(
      id: serializer.fromJson<int>(json['id']),
      fundingSource: serializer.fromJson<int>(json['fundingSource']),
      type: serializer.fromJson<TransactionType>(json['type']),
      detail: serializer.fromJson<String?>(json['detail']),
      destination: serializer.fromJson<int?>(json['destination']),
      fee: serializer.fromJson<int>(json['fee']),
      adminFee: serializer.fromJson<int?>(json['adminFee']),
      total: serializer.fromJson<int>(json['total']),
      category: serializer.fromJson<int?>(json['category']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'fundingSource': serializer.toJson<int>(fundingSource),
      'type': serializer.toJson<TransactionType>(type),
      'detail': serializer.toJson<String?>(detail),
      'destination': serializer.toJson<int?>(destination),
      'fee': serializer.toJson<int>(fee),
      'adminFee': serializer.toJson<int?>(adminFee),
      'total': serializer.toJson<int>(total),
      'category': serializer.toJson<int?>(category),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  TransactionTableData copyWith({
    int? id,
    int? fundingSource,
    TransactionType? type,
    Value<String?> detail = const Value.absent(),
    Value<int?> destination = const Value.absent(),
    int? fee,
    Value<int?> adminFee = const Value.absent(),
    int? total,
    Value<int?> category = const Value.absent(),
    DateTime? createdAt,
  }) => TransactionTableData(
    id: id ?? this.id,
    fundingSource: fundingSource ?? this.fundingSource,
    type: type ?? this.type,
    detail: detail.present ? detail.value : this.detail,
    destination: destination.present ? destination.value : this.destination,
    fee: fee ?? this.fee,
    adminFee: adminFee.present ? adminFee.value : this.adminFee,
    total: total ?? this.total,
    category: category.present ? category.value : this.category,
    createdAt: createdAt ?? this.createdAt,
  );
  TransactionTableData copyWithCompanion(TransactionTableCompanion data) {
    return TransactionTableData(
      id: data.id.present ? data.id.value : this.id,
      fundingSource: data.fundingSource.present
          ? data.fundingSource.value
          : this.fundingSource,
      type: data.type.present ? data.type.value : this.type,
      detail: data.detail.present ? data.detail.value : this.detail,
      destination: data.destination.present
          ? data.destination.value
          : this.destination,
      fee: data.fee.present ? data.fee.value : this.fee,
      adminFee: data.adminFee.present ? data.adminFee.value : this.adminFee,
      total: data.total.present ? data.total.value : this.total,
      category: data.category.present ? data.category.value : this.category,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TransactionTableData(')
          ..write('id: $id, ')
          ..write('fundingSource: $fundingSource, ')
          ..write('type: $type, ')
          ..write('detail: $detail, ')
          ..write('destination: $destination, ')
          ..write('fee: $fee, ')
          ..write('adminFee: $adminFee, ')
          ..write('total: $total, ')
          ..write('category: $category, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    fundingSource,
    type,
    detail,
    destination,
    fee,
    adminFee,
    total,
    category,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TransactionTableData &&
          other.id == this.id &&
          other.fundingSource == this.fundingSource &&
          other.type == this.type &&
          other.detail == this.detail &&
          other.destination == this.destination &&
          other.fee == this.fee &&
          other.adminFee == this.adminFee &&
          other.total == this.total &&
          other.category == this.category &&
          other.createdAt == this.createdAt);
}

class TransactionTableCompanion extends UpdateCompanion<TransactionTableData> {
  final Value<int> id;
  final Value<int> fundingSource;
  final Value<TransactionType> type;
  final Value<String?> detail;
  final Value<int?> destination;
  final Value<int> fee;
  final Value<int?> adminFee;
  final Value<int> total;
  final Value<int?> category;
  final Value<DateTime> createdAt;
  const TransactionTableCompanion({
    this.id = const Value.absent(),
    this.fundingSource = const Value.absent(),
    this.type = const Value.absent(),
    this.detail = const Value.absent(),
    this.destination = const Value.absent(),
    this.fee = const Value.absent(),
    this.adminFee = const Value.absent(),
    this.total = const Value.absent(),
    this.category = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  TransactionTableCompanion.insert({
    this.id = const Value.absent(),
    required int fundingSource,
    required TransactionType type,
    this.detail = const Value.absent(),
    this.destination = const Value.absent(),
    required int fee,
    this.adminFee = const Value.absent(),
    required int total,
    this.category = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : fundingSource = Value(fundingSource),
       type = Value(type),
       fee = Value(fee),
       total = Value(total);
  static Insertable<TransactionTableData> custom({
    Expression<int>? id,
    Expression<int>? fundingSource,
    Expression<String>? type,
    Expression<String>? detail,
    Expression<int>? destination,
    Expression<int>? fee,
    Expression<int>? adminFee,
    Expression<int>? total,
    Expression<int>? category,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fundingSource != null) 'funding_source': fundingSource,
      if (type != null) 'type': type,
      if (detail != null) 'detail': detail,
      if (destination != null) 'destination': destination,
      if (fee != null) 'fee': fee,
      if (adminFee != null) 'admin_fee': adminFee,
      if (total != null) 'total': total,
      if (category != null) 'category': category,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  TransactionTableCompanion copyWith({
    Value<int>? id,
    Value<int>? fundingSource,
    Value<TransactionType>? type,
    Value<String?>? detail,
    Value<int?>? destination,
    Value<int>? fee,
    Value<int?>? adminFee,
    Value<int>? total,
    Value<int?>? category,
    Value<DateTime>? createdAt,
  }) {
    return TransactionTableCompanion(
      id: id ?? this.id,
      fundingSource: fundingSource ?? this.fundingSource,
      type: type ?? this.type,
      detail: detail ?? this.detail,
      destination: destination ?? this.destination,
      fee: fee ?? this.fee,
      adminFee: adminFee ?? this.adminFee,
      total: total ?? this.total,
      category: category ?? this.category,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (fundingSource.present) {
      map['funding_source'] = Variable<int>(fundingSource.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(
        $TransactionTableTable.$convertertype.toSql(type.value),
      );
    }
    if (detail.present) {
      map['detail'] = Variable<String>(detail.value);
    }
    if (destination.present) {
      map['destination'] = Variable<int>(destination.value);
    }
    if (fee.present) {
      map['fee'] = Variable<int>(fee.value);
    }
    if (adminFee.present) {
      map['admin_fee'] = Variable<int>(adminFee.value);
    }
    if (total.present) {
      map['total'] = Variable<int>(total.value);
    }
    if (category.present) {
      map['category'] = Variable<int>(category.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransactionTableCompanion(')
          ..write('id: $id, ')
          ..write('fundingSource: $fundingSource, ')
          ..write('type: $type, ')
          ..write('detail: $detail, ')
          ..write('destination: $destination, ')
          ..write('fee: $fee, ')
          ..write('adminFee: $adminFee, ')
          ..write('total: $total, ')
          ..write('category: $category, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $FundingSourceTableTable fundingSourceTable =
      $FundingSourceTableTable(this);
  late final $CategoryTableTable categoryTable = $CategoryTableTable(this);
  late final $TransactionTableTable transactionTable = $TransactionTableTable(
    this,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    fundingSourceTable,
    categoryTable,
    transactionTable,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'funding_source_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('transaction_table', kind: UpdateKind.update)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'funding_source_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('transaction_table', kind: UpdateKind.update)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'category_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('transaction_table', kind: UpdateKind.update)],
    ),
  ]);
}

typedef $$FundingSourceTableTableCreateCompanionBuilder =
    FundingSourceTableCompanion Function({
      Value<int> id,
      required String name,
      Value<String?> description,
      required FundingSourceType type,
      Value<int> balance,
      Value<int?> monthlyFee,
      Value<bool> isActive,
      Value<String?> color,
      Value<DateTime> createdAt,
    });
typedef $$FundingSourceTableTableUpdateCompanionBuilder =
    FundingSourceTableCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String?> description,
      Value<FundingSourceType> type,
      Value<int> balance,
      Value<int?> monthlyFee,
      Value<bool> isActive,
      Value<String?> color,
      Value<DateTime> createdAt,
    });

final class $$FundingSourceTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $FundingSourceTableTable,
          FundingSourceTableData
        > {
  $$FundingSourceTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$TransactionTableTable, List<TransactionTableData>>
  _fundingSourceTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.transactionTable,
    aliasName: $_aliasNameGenerator(
      db.fundingSourceTable.id,
      db.transactionTable.fundingSource,
    ),
  );

  $$TransactionTableTableProcessedTableManager get fundingSource {
    final manager = $$TransactionTableTableTableManager(
      $_db,
      $_db.transactionTable,
    ).filter((f) => f.fundingSource.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_fundingSourceTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$TransactionTableTable, List<TransactionTableData>>
  _destinationTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.transactionTable,
    aliasName: $_aliasNameGenerator(
      db.fundingSourceTable.id,
      db.transactionTable.destination,
    ),
  );

  $$TransactionTableTableProcessedTableManager get destination {
    final manager = $$TransactionTableTableTableManager(
      $_db,
      $_db.transactionTable,
    ).filter((f) => f.destination.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_destinationTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$FundingSourceTableTableFilterComposer
    extends Composer<_$AppDatabase, $FundingSourceTableTable> {
  $$FundingSourceTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<FundingSourceType, FundingSourceType, String>
  get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<int> get balance => $composableBuilder(
    column: $table.balance,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get monthlyFee => $composableBuilder(
    column: $table.monthlyFee,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> fundingSource(
    Expression<bool> Function($$TransactionTableTableFilterComposer f) f,
  ) {
    final $$TransactionTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.transactionTable,
      getReferencedColumn: (t) => t.fundingSource,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TransactionTableTableFilterComposer(
            $db: $db,
            $table: $db.transactionTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> destination(
    Expression<bool> Function($$TransactionTableTableFilterComposer f) f,
  ) {
    final $$TransactionTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.transactionTable,
      getReferencedColumn: (t) => t.destination,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TransactionTableTableFilterComposer(
            $db: $db,
            $table: $db.transactionTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$FundingSourceTableTableOrderingComposer
    extends Composer<_$AppDatabase, $FundingSourceTableTable> {
  $$FundingSourceTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get balance => $composableBuilder(
    column: $table.balance,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get monthlyFee => $composableBuilder(
    column: $table.monthlyFee,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FundingSourceTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $FundingSourceTableTable> {
  $$FundingSourceTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<FundingSourceType, String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get balance =>
      $composableBuilder(column: $table.balance, builder: (column) => column);

  GeneratedColumn<int> get monthlyFee => $composableBuilder(
    column: $table.monthlyFee,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> fundingSource<T extends Object>(
    Expression<T> Function($$TransactionTableTableAnnotationComposer a) f,
  ) {
    final $$TransactionTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.transactionTable,
      getReferencedColumn: (t) => t.fundingSource,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TransactionTableTableAnnotationComposer(
            $db: $db,
            $table: $db.transactionTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> destination<T extends Object>(
    Expression<T> Function($$TransactionTableTableAnnotationComposer a) f,
  ) {
    final $$TransactionTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.transactionTable,
      getReferencedColumn: (t) => t.destination,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TransactionTableTableAnnotationComposer(
            $db: $db,
            $table: $db.transactionTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$FundingSourceTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FundingSourceTableTable,
          FundingSourceTableData,
          $$FundingSourceTableTableFilterComposer,
          $$FundingSourceTableTableOrderingComposer,
          $$FundingSourceTableTableAnnotationComposer,
          $$FundingSourceTableTableCreateCompanionBuilder,
          $$FundingSourceTableTableUpdateCompanionBuilder,
          (FundingSourceTableData, $$FundingSourceTableTableReferences),
          FundingSourceTableData,
          PrefetchHooks Function({bool fundingSource, bool destination})
        > {
  $$FundingSourceTableTableTableManager(
    _$AppDatabase db,
    $FundingSourceTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FundingSourceTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FundingSourceTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FundingSourceTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<FundingSourceType> type = const Value.absent(),
                Value<int> balance = const Value.absent(),
                Value<int?> monthlyFee = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<String?> color = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => FundingSourceTableCompanion(
                id: id,
                name: name,
                description: description,
                type: type,
                balance: balance,
                monthlyFee: monthlyFee,
                isActive: isActive,
                color: color,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                Value<String?> description = const Value.absent(),
                required FundingSourceType type,
                Value<int> balance = const Value.absent(),
                Value<int?> monthlyFee = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<String?> color = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => FundingSourceTableCompanion.insert(
                id: id,
                name: name,
                description: description,
                type: type,
                balance: balance,
                monthlyFee: monthlyFee,
                isActive: isActive,
                color: color,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$FundingSourceTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({fundingSource = false, destination = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (fundingSource) db.transactionTable,
                    if (destination) db.transactionTable,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (fundingSource)
                        await $_getPrefetchedData<
                          FundingSourceTableData,
                          $FundingSourceTableTable,
                          TransactionTableData
                        >(
                          currentTable: table,
                          referencedTable: $$FundingSourceTableTableReferences
                              ._fundingSourceTable(db),
                          managerFromTypedResult: (p0) =>
                              $$FundingSourceTableTableReferences(
                                db,
                                table,
                                p0,
                              ).fundingSource,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.fundingSource == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (destination)
                        await $_getPrefetchedData<
                          FundingSourceTableData,
                          $FundingSourceTableTable,
                          TransactionTableData
                        >(
                          currentTable: table,
                          referencedTable: $$FundingSourceTableTableReferences
                              ._destinationTable(db),
                          managerFromTypedResult: (p0) =>
                              $$FundingSourceTableTableReferences(
                                db,
                                table,
                                p0,
                              ).destination,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.destination == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$FundingSourceTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FundingSourceTableTable,
      FundingSourceTableData,
      $$FundingSourceTableTableFilterComposer,
      $$FundingSourceTableTableOrderingComposer,
      $$FundingSourceTableTableAnnotationComposer,
      $$FundingSourceTableTableCreateCompanionBuilder,
      $$FundingSourceTableTableUpdateCompanionBuilder,
      (FundingSourceTableData, $$FundingSourceTableTableReferences),
      FundingSourceTableData,
      PrefetchHooks Function({bool fundingSource, bool destination})
    >;
typedef $$CategoryTableTableCreateCompanionBuilder =
    CategoryTableCompanion Function({
      Value<int> id,
      required String name,
      Value<String?> color,
      Value<String?> icon,
      Value<DateTime> createdAt,
    });
typedef $$CategoryTableTableUpdateCompanionBuilder =
    CategoryTableCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String?> color,
      Value<String?> icon,
      Value<DateTime> createdAt,
    });

final class $$CategoryTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $CategoryTableTable, CategoryTableData> {
  $$CategoryTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$TransactionTableTable, List<TransactionTableData>>
  _transactionTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.transactionTable,
    aliasName: $_aliasNameGenerator(
      db.categoryTable.id,
      db.transactionTable.category,
    ),
  );

  $$TransactionTableTableProcessedTableManager get transactionTableRefs {
    final manager = $$TransactionTableTableTableManager(
      $_db,
      $_db.transactionTable,
    ).filter((f) => f.category.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _transactionTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$CategoryTableTableFilterComposer
    extends Composer<_$AppDatabase, $CategoryTableTable> {
  $$CategoryTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> transactionTableRefs(
    Expression<bool> Function($$TransactionTableTableFilterComposer f) f,
  ) {
    final $$TransactionTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.transactionTable,
      getReferencedColumn: (t) => t.category,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TransactionTableTableFilterComposer(
            $db: $db,
            $table: $db.transactionTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CategoryTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CategoryTableTable> {
  $$CategoryTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CategoryTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CategoryTableTable> {
  $$CategoryTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get icon =>
      $composableBuilder(column: $table.icon, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> transactionTableRefs<T extends Object>(
    Expression<T> Function($$TransactionTableTableAnnotationComposer a) f,
  ) {
    final $$TransactionTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.transactionTable,
      getReferencedColumn: (t) => t.category,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TransactionTableTableAnnotationComposer(
            $db: $db,
            $table: $db.transactionTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CategoryTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CategoryTableTable,
          CategoryTableData,
          $$CategoryTableTableFilterComposer,
          $$CategoryTableTableOrderingComposer,
          $$CategoryTableTableAnnotationComposer,
          $$CategoryTableTableCreateCompanionBuilder,
          $$CategoryTableTableUpdateCompanionBuilder,
          (CategoryTableData, $$CategoryTableTableReferences),
          CategoryTableData,
          PrefetchHooks Function({bool transactionTableRefs})
        > {
  $$CategoryTableTableTableManager(_$AppDatabase db, $CategoryTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoryTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoryTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoryTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> color = const Value.absent(),
                Value<String?> icon = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => CategoryTableCompanion(
                id: id,
                name: name,
                color: color,
                icon: icon,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                Value<String?> color = const Value.absent(),
                Value<String?> icon = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => CategoryTableCompanion.insert(
                id: id,
                name: name,
                color: color,
                icon: icon,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$CategoryTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({transactionTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (transactionTableRefs) db.transactionTable,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (transactionTableRefs)
                    await $_getPrefetchedData<
                      CategoryTableData,
                      $CategoryTableTable,
                      TransactionTableData
                    >(
                      currentTable: table,
                      referencedTable: $$CategoryTableTableReferences
                          ._transactionTableRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$CategoryTableTableReferences(
                            db,
                            table,
                            p0,
                          ).transactionTableRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.category == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$CategoryTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CategoryTableTable,
      CategoryTableData,
      $$CategoryTableTableFilterComposer,
      $$CategoryTableTableOrderingComposer,
      $$CategoryTableTableAnnotationComposer,
      $$CategoryTableTableCreateCompanionBuilder,
      $$CategoryTableTableUpdateCompanionBuilder,
      (CategoryTableData, $$CategoryTableTableReferences),
      CategoryTableData,
      PrefetchHooks Function({bool transactionTableRefs})
    >;
typedef $$TransactionTableTableCreateCompanionBuilder =
    TransactionTableCompanion Function({
      Value<int> id,
      required int fundingSource,
      required TransactionType type,
      Value<String?> detail,
      Value<int?> destination,
      required int fee,
      Value<int?> adminFee,
      required int total,
      Value<int?> category,
      Value<DateTime> createdAt,
    });
typedef $$TransactionTableTableUpdateCompanionBuilder =
    TransactionTableCompanion Function({
      Value<int> id,
      Value<int> fundingSource,
      Value<TransactionType> type,
      Value<String?> detail,
      Value<int?> destination,
      Value<int> fee,
      Value<int?> adminFee,
      Value<int> total,
      Value<int?> category,
      Value<DateTime> createdAt,
    });

final class $$TransactionTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $TransactionTableTable,
          TransactionTableData
        > {
  $$TransactionTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $FundingSourceTableTable _fundingSourceTable(_$AppDatabase db) =>
      db.fundingSourceTable.createAlias(
        $_aliasNameGenerator(
          db.transactionTable.fundingSource,
          db.fundingSourceTable.id,
        ),
      );

  $$FundingSourceTableTableProcessedTableManager get fundingSource {
    final $_column = $_itemColumn<int>('funding_source')!;

    final manager = $$FundingSourceTableTableTableManager(
      $_db,
      $_db.fundingSourceTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_fundingSourceTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $FundingSourceTableTable _destinationTable(_$AppDatabase db) =>
      db.fundingSourceTable.createAlias(
        $_aliasNameGenerator(
          db.transactionTable.destination,
          db.fundingSourceTable.id,
        ),
      );

  $$FundingSourceTableTableProcessedTableManager? get destination {
    final $_column = $_itemColumn<int>('destination');
    if ($_column == null) return null;
    final manager = $$FundingSourceTableTableTableManager(
      $_db,
      $_db.fundingSourceTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_destinationTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $CategoryTableTable _categoryTable(_$AppDatabase db) =>
      db.categoryTable.createAlias(
        $_aliasNameGenerator(db.transactionTable.category, db.categoryTable.id),
      );

  $$CategoryTableTableProcessedTableManager? get category {
    final $_column = $_itemColumn<int>('category');
    if ($_column == null) return null;
    final manager = $$CategoryTableTableTableManager(
      $_db,
      $_db.categoryTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_categoryTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$TransactionTableTableFilterComposer
    extends Composer<_$AppDatabase, $TransactionTableTable> {
  $$TransactionTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<TransactionType, TransactionType, String>
  get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<String> get detail => $composableBuilder(
    column: $table.detail,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get fee => $composableBuilder(
    column: $table.fee,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get adminFee => $composableBuilder(
    column: $table.adminFee,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get total => $composableBuilder(
    column: $table.total,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$FundingSourceTableTableFilterComposer get fundingSource {
    final $$FundingSourceTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.fundingSource,
      referencedTable: $db.fundingSourceTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FundingSourceTableTableFilterComposer(
            $db: $db,
            $table: $db.fundingSourceTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$FundingSourceTableTableFilterComposer get destination {
    final $$FundingSourceTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.destination,
      referencedTable: $db.fundingSourceTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FundingSourceTableTableFilterComposer(
            $db: $db,
            $table: $db.fundingSourceTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$CategoryTableTableFilterComposer get category {
    final $$CategoryTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.category,
      referencedTable: $db.categoryTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoryTableTableFilterComposer(
            $db: $db,
            $table: $db.categoryTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TransactionTableTableOrderingComposer
    extends Composer<_$AppDatabase, $TransactionTableTable> {
  $$TransactionTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get detail => $composableBuilder(
    column: $table.detail,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get fee => $composableBuilder(
    column: $table.fee,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get adminFee => $composableBuilder(
    column: $table.adminFee,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get total => $composableBuilder(
    column: $table.total,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$FundingSourceTableTableOrderingComposer get fundingSource {
    final $$FundingSourceTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.fundingSource,
      referencedTable: $db.fundingSourceTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FundingSourceTableTableOrderingComposer(
            $db: $db,
            $table: $db.fundingSourceTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$FundingSourceTableTableOrderingComposer get destination {
    final $$FundingSourceTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.destination,
      referencedTable: $db.fundingSourceTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FundingSourceTableTableOrderingComposer(
            $db: $db,
            $table: $db.fundingSourceTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$CategoryTableTableOrderingComposer get category {
    final $$CategoryTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.category,
      referencedTable: $db.categoryTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoryTableTableOrderingComposer(
            $db: $db,
            $table: $db.categoryTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TransactionTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $TransactionTableTable> {
  $$TransactionTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<TransactionType, String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get detail =>
      $composableBuilder(column: $table.detail, builder: (column) => column);

  GeneratedColumn<int> get fee =>
      $composableBuilder(column: $table.fee, builder: (column) => column);

  GeneratedColumn<int> get adminFee =>
      $composableBuilder(column: $table.adminFee, builder: (column) => column);

  GeneratedColumn<int> get total =>
      $composableBuilder(column: $table.total, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$FundingSourceTableTableAnnotationComposer get fundingSource {
    final $$FundingSourceTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.fundingSource,
          referencedTable: $db.fundingSourceTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$FundingSourceTableTableAnnotationComposer(
                $db: $db,
                $table: $db.fundingSourceTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  $$FundingSourceTableTableAnnotationComposer get destination {
    final $$FundingSourceTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.destination,
          referencedTable: $db.fundingSourceTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$FundingSourceTableTableAnnotationComposer(
                $db: $db,
                $table: $db.fundingSourceTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  $$CategoryTableTableAnnotationComposer get category {
    final $$CategoryTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.category,
      referencedTable: $db.categoryTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoryTableTableAnnotationComposer(
            $db: $db,
            $table: $db.categoryTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TransactionTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TransactionTableTable,
          TransactionTableData,
          $$TransactionTableTableFilterComposer,
          $$TransactionTableTableOrderingComposer,
          $$TransactionTableTableAnnotationComposer,
          $$TransactionTableTableCreateCompanionBuilder,
          $$TransactionTableTableUpdateCompanionBuilder,
          (TransactionTableData, $$TransactionTableTableReferences),
          TransactionTableData,
          PrefetchHooks Function({
            bool fundingSource,
            bool destination,
            bool category,
          })
        > {
  $$TransactionTableTableTableManager(
    _$AppDatabase db,
    $TransactionTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TransactionTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TransactionTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TransactionTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> fundingSource = const Value.absent(),
                Value<TransactionType> type = const Value.absent(),
                Value<String?> detail = const Value.absent(),
                Value<int?> destination = const Value.absent(),
                Value<int> fee = const Value.absent(),
                Value<int?> adminFee = const Value.absent(),
                Value<int> total = const Value.absent(),
                Value<int?> category = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => TransactionTableCompanion(
                id: id,
                fundingSource: fundingSource,
                type: type,
                detail: detail,
                destination: destination,
                fee: fee,
                adminFee: adminFee,
                total: total,
                category: category,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int fundingSource,
                required TransactionType type,
                Value<String?> detail = const Value.absent(),
                Value<int?> destination = const Value.absent(),
                required int fee,
                Value<int?> adminFee = const Value.absent(),
                required int total,
                Value<int?> category = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => TransactionTableCompanion.insert(
                id: id,
                fundingSource: fundingSource,
                type: type,
                detail: detail,
                destination: destination,
                fee: fee,
                adminFee: adminFee,
                total: total,
                category: category,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$TransactionTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({fundingSource = false, destination = false, category = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (fundingSource) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.fundingSource,
                                    referencedTable:
                                        $$TransactionTableTableReferences
                                            ._fundingSourceTable(db),
                                    referencedColumn:
                                        $$TransactionTableTableReferences
                                            ._fundingSourceTable(db)
                                            .id,
                                  )
                                  as T;
                        }
                        if (destination) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.destination,
                                    referencedTable:
                                        $$TransactionTableTableReferences
                                            ._destinationTable(db),
                                    referencedColumn:
                                        $$TransactionTableTableReferences
                                            ._destinationTable(db)
                                            .id,
                                  )
                                  as T;
                        }
                        if (category) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.category,
                                    referencedTable:
                                        $$TransactionTableTableReferences
                                            ._categoryTable(db),
                                    referencedColumn:
                                        $$TransactionTableTableReferences
                                            ._categoryTable(db)
                                            .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [];
                  },
                );
              },
        ),
      );
}

typedef $$TransactionTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TransactionTableTable,
      TransactionTableData,
      $$TransactionTableTableFilterComposer,
      $$TransactionTableTableOrderingComposer,
      $$TransactionTableTableAnnotationComposer,
      $$TransactionTableTableCreateCompanionBuilder,
      $$TransactionTableTableUpdateCompanionBuilder,
      (TransactionTableData, $$TransactionTableTableReferences),
      TransactionTableData,
      PrefetchHooks Function({
        bool fundingSource,
        bool destination,
        bool category,
      })
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$FundingSourceTableTableTableManager get fundingSourceTable =>
      $$FundingSourceTableTableTableManager(_db, _db.fundingSourceTable);
  $$CategoryTableTableTableManager get categoryTable =>
      $$CategoryTableTableTableManager(_db, _db.categoryTable);
  $$TransactionTableTableTableManager get transactionTable =>
      $$TransactionTableTableTableManager(_db, _db.transactionTable);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appDatabaseHash() => r'67f06207fff3a55949c4c4b67200f868a9b6acc8';

/// See also [appDatabase].
@ProviderFor(appDatabase)
final appDatabaseProvider = Provider<AppDatabase>.internal(
  appDatabase,
  name: r'appDatabaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$appDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AppDatabaseRef = ProviderRef<AppDatabase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
