// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'funding_source_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FundingSourceModel {

 int get id; String get name; String? get description; FundingSourceType get type; int get balance; int? get monthlyFee; bool get isActive; String? get color; DateTime get createdAt;
/// Create a copy of FundingSourceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FundingSourceModelCopyWith<FundingSourceModel> get copyWith => _$FundingSourceModelCopyWithImpl<FundingSourceModel>(this as FundingSourceModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FundingSourceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.monthlyFee, monthlyFee) || other.monthlyFee == monthlyFee)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.color, color) || other.color == color)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,type,balance,monthlyFee,isActive,color,createdAt);

@override
String toString() {
  return 'FundingSourceModel(id: $id, name: $name, description: $description, type: $type, balance: $balance, monthlyFee: $monthlyFee, isActive: $isActive, color: $color, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $FundingSourceModelCopyWith<$Res>  {
  factory $FundingSourceModelCopyWith(FundingSourceModel value, $Res Function(FundingSourceModel) _then) = _$FundingSourceModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? description, FundingSourceType type, int balance, int? monthlyFee, bool isActive, String? color, DateTime createdAt
});




}
/// @nodoc
class _$FundingSourceModelCopyWithImpl<$Res>
    implements $FundingSourceModelCopyWith<$Res> {
  _$FundingSourceModelCopyWithImpl(this._self, this._then);

  final FundingSourceModel _self;
  final $Res Function(FundingSourceModel) _then;

/// Create a copy of FundingSourceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? type = null,Object? balance = null,Object? monthlyFee = freezed,Object? isActive = null,Object? color = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FundingSourceType,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,monthlyFee: freezed == monthlyFee ? _self.monthlyFee : monthlyFee // ignore: cast_nullable_to_non_nullable
as int?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [FundingSourceModel].
extension FundingSourceModelPatterns on FundingSourceModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FundingSourceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FundingSourceModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FundingSourceModel value)  $default,){
final _that = this;
switch (_that) {
case _FundingSourceModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FundingSourceModel value)?  $default,){
final _that = this;
switch (_that) {
case _FundingSourceModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? description,  FundingSourceType type,  int balance,  int? monthlyFee,  bool isActive,  String? color,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FundingSourceModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.type,_that.balance,_that.monthlyFee,_that.isActive,_that.color,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? description,  FundingSourceType type,  int balance,  int? monthlyFee,  bool isActive,  String? color,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _FundingSourceModel():
return $default(_that.id,_that.name,_that.description,_that.type,_that.balance,_that.monthlyFee,_that.isActive,_that.color,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? description,  FundingSourceType type,  int balance,  int? monthlyFee,  bool isActive,  String? color,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _FundingSourceModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.type,_that.balance,_that.monthlyFee,_that.isActive,_that.color,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _FundingSourceModel implements FundingSourceModel {
   _FundingSourceModel({this.id = 0, required this.name, this.description, required this.type, required this.balance, this.monthlyFee, required this.isActive, this.color, required this.createdAt});
  

@override@JsonKey() final  int id;
@override final  String name;
@override final  String? description;
@override final  FundingSourceType type;
@override final  int balance;
@override final  int? monthlyFee;
@override final  bool isActive;
@override final  String? color;
@override final  DateTime createdAt;

/// Create a copy of FundingSourceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FundingSourceModelCopyWith<_FundingSourceModel> get copyWith => __$FundingSourceModelCopyWithImpl<_FundingSourceModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FundingSourceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.monthlyFee, monthlyFee) || other.monthlyFee == monthlyFee)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.color, color) || other.color == color)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,type,balance,monthlyFee,isActive,color,createdAt);

@override
String toString() {
  return 'FundingSourceModel(id: $id, name: $name, description: $description, type: $type, balance: $balance, monthlyFee: $monthlyFee, isActive: $isActive, color: $color, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$FundingSourceModelCopyWith<$Res> implements $FundingSourceModelCopyWith<$Res> {
  factory _$FundingSourceModelCopyWith(_FundingSourceModel value, $Res Function(_FundingSourceModel) _then) = __$FundingSourceModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? description, FundingSourceType type, int balance, int? monthlyFee, bool isActive, String? color, DateTime createdAt
});




}
/// @nodoc
class __$FundingSourceModelCopyWithImpl<$Res>
    implements _$FundingSourceModelCopyWith<$Res> {
  __$FundingSourceModelCopyWithImpl(this._self, this._then);

  final _FundingSourceModel _self;
  final $Res Function(_FundingSourceModel) _then;

/// Create a copy of FundingSourceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? type = null,Object? balance = null,Object? monthlyFee = freezed,Object? isActive = null,Object? color = freezed,Object? createdAt = null,}) {
  return _then(_FundingSourceModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FundingSourceType,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,monthlyFee: freezed == monthlyFee ? _self.monthlyFee : monthlyFee // ignore: cast_nullable_to_non_nullable
as int?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
