// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionModel {

 int get id; int get fundingSource; TransactionType get type; String? get detail; int? get destination; int get fee; int? get adminFee; int get total; int? get category; DateTime get createdAt;
/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionModelCopyWith<TransactionModel> get copyWith => _$TransactionModelCopyWithImpl<TransactionModel>(this as TransactionModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fundingSource, fundingSource) || other.fundingSource == fundingSource)&&(identical(other.type, type) || other.type == type)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.adminFee, adminFee) || other.adminFee == adminFee)&&(identical(other.total, total) || other.total == total)&&(identical(other.category, category) || other.category == category)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,fundingSource,type,detail,destination,fee,adminFee,total,category,createdAt);

@override
String toString() {
  return 'TransactionModel(id: $id, fundingSource: $fundingSource, type: $type, detail: $detail, destination: $destination, fee: $fee, adminFee: $adminFee, total: $total, category: $category, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $TransactionModelCopyWith<$Res>  {
  factory $TransactionModelCopyWith(TransactionModel value, $Res Function(TransactionModel) _then) = _$TransactionModelCopyWithImpl;
@useResult
$Res call({
 int id, int fundingSource, TransactionType type, String? detail, int? destination, int fee, int? adminFee, int total, int? category, DateTime createdAt
});




}
/// @nodoc
class _$TransactionModelCopyWithImpl<$Res>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._self, this._then);

  final TransactionModel _self;
  final $Res Function(TransactionModel) _then;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fundingSource = null,Object? type = null,Object? detail = freezed,Object? destination = freezed,Object? fee = null,Object? adminFee = freezed,Object? total = null,Object? category = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,fundingSource: null == fundingSource ? _self.fundingSource : fundingSource // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,destination: freezed == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as int?,fee: null == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as int,adminFee: freezed == adminFee ? _self.adminFee : adminFee // ignore: cast_nullable_to_non_nullable
as int?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as int?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionModel].
extension TransactionModelPatterns on TransactionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int fundingSource,  TransactionType type,  String? detail,  int? destination,  int fee,  int? adminFee,  int total,  int? category,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
return $default(_that.id,_that.fundingSource,_that.type,_that.detail,_that.destination,_that.fee,_that.adminFee,_that.total,_that.category,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int fundingSource,  TransactionType type,  String? detail,  int? destination,  int fee,  int? adminFee,  int total,  int? category,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _TransactionModel():
return $default(_that.id,_that.fundingSource,_that.type,_that.detail,_that.destination,_that.fee,_that.adminFee,_that.total,_that.category,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int fundingSource,  TransactionType type,  String? detail,  int? destination,  int fee,  int? adminFee,  int total,  int? category,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
return $default(_that.id,_that.fundingSource,_that.type,_that.detail,_that.destination,_that.fee,_that.adminFee,_that.total,_that.category,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionModel implements TransactionModel {
   _TransactionModel({this.id = 0, required this.fundingSource, required this.type, this.detail, this.destination, required this.fee, this.adminFee, required this.total, this.category, required this.createdAt});
  

@override@JsonKey() final  int id;
@override final  int fundingSource;
@override final  TransactionType type;
@override final  String? detail;
@override final  int? destination;
@override final  int fee;
@override final  int? adminFee;
@override final  int total;
@override final  int? category;
@override final  DateTime createdAt;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionModelCopyWith<_TransactionModel> get copyWith => __$TransactionModelCopyWithImpl<_TransactionModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fundingSource, fundingSource) || other.fundingSource == fundingSource)&&(identical(other.type, type) || other.type == type)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.adminFee, adminFee) || other.adminFee == adminFee)&&(identical(other.total, total) || other.total == total)&&(identical(other.category, category) || other.category == category)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,fundingSource,type,detail,destination,fee,adminFee,total,category,createdAt);

@override
String toString() {
  return 'TransactionModel(id: $id, fundingSource: $fundingSource, type: $type, detail: $detail, destination: $destination, fee: $fee, adminFee: $adminFee, total: $total, category: $category, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$TransactionModelCopyWith<$Res> implements $TransactionModelCopyWith<$Res> {
  factory _$TransactionModelCopyWith(_TransactionModel value, $Res Function(_TransactionModel) _then) = __$TransactionModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int fundingSource, TransactionType type, String? detail, int? destination, int fee, int? adminFee, int total, int? category, DateTime createdAt
});




}
/// @nodoc
class __$TransactionModelCopyWithImpl<$Res>
    implements _$TransactionModelCopyWith<$Res> {
  __$TransactionModelCopyWithImpl(this._self, this._then);

  final _TransactionModel _self;
  final $Res Function(_TransactionModel) _then;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fundingSource = null,Object? type = null,Object? detail = freezed,Object? destination = freezed,Object? fee = null,Object? adminFee = freezed,Object? total = null,Object? category = freezed,Object? createdAt = null,}) {
  return _then(_TransactionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,fundingSource: null == fundingSource ? _self.fundingSource : fundingSource // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,destination: freezed == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as int?,fee: null == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as int,adminFee: freezed == adminFee ? _self.adminFee : adminFee // ignore: cast_nullable_to_non_nullable
as int?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as int?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
