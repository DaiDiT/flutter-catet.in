// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'funding_source_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FundingSourceState {

 bool get isLoading; List<FundingSourceModel> get fundingSources; FundingSourceModel? get fundingSource; String? get error;
/// Create a copy of FundingSourceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FundingSourceStateCopyWith<FundingSourceState> get copyWith => _$FundingSourceStateCopyWithImpl<FundingSourceState>(this as FundingSourceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FundingSourceState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.fundingSources, fundingSources)&&(identical(other.fundingSource, fundingSource) || other.fundingSource == fundingSource)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(fundingSources),fundingSource,error);

@override
String toString() {
  return 'FundingSourceState(isLoading: $isLoading, fundingSources: $fundingSources, fundingSource: $fundingSource, error: $error)';
}


}

/// @nodoc
abstract mixin class $FundingSourceStateCopyWith<$Res>  {
  factory $FundingSourceStateCopyWith(FundingSourceState value, $Res Function(FundingSourceState) _then) = _$FundingSourceStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<FundingSourceModel> fundingSources, FundingSourceModel? fundingSource, String? error
});


$FundingSourceModelCopyWith<$Res>? get fundingSource;

}
/// @nodoc
class _$FundingSourceStateCopyWithImpl<$Res>
    implements $FundingSourceStateCopyWith<$Res> {
  _$FundingSourceStateCopyWithImpl(this._self, this._then);

  final FundingSourceState _self;
  final $Res Function(FundingSourceState) _then;

/// Create a copy of FundingSourceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? fundingSources = null,Object? fundingSource = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,fundingSources: null == fundingSources ? _self.fundingSources : fundingSources // ignore: cast_nullable_to_non_nullable
as List<FundingSourceModel>,fundingSource: freezed == fundingSource ? _self.fundingSource : fundingSource // ignore: cast_nullable_to_non_nullable
as FundingSourceModel?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of FundingSourceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FundingSourceModelCopyWith<$Res>? get fundingSource {
    if (_self.fundingSource == null) {
    return null;
  }

  return $FundingSourceModelCopyWith<$Res>(_self.fundingSource!, (value) {
    return _then(_self.copyWith(fundingSource: value));
  });
}
}


/// Adds pattern-matching-related methods to [FundingSourceState].
extension FundingSourceStatePatterns on FundingSourceState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<FundingSourceModel> fundingSources,  FundingSourceModel? fundingSource,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FundingSourceModel() when $default != null:
return $default(_that.isLoading,_that.fundingSources,_that.fundingSource,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<FundingSourceModel> fundingSources,  FundingSourceModel? fundingSource,  String? error)  $default,) {final _that = this;
switch (_that) {
case _FundingSourceModel():
return $default(_that.isLoading,_that.fundingSources,_that.fundingSource,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<FundingSourceModel> fundingSources,  FundingSourceModel? fundingSource,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _FundingSourceModel() when $default != null:
return $default(_that.isLoading,_that.fundingSources,_that.fundingSource,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _FundingSourceModel implements FundingSourceState {
   _FundingSourceModel({this.isLoading = false, final  List<FundingSourceModel> fundingSources = const [], this.fundingSource, this.error}): _fundingSources = fundingSources;
  

@override@JsonKey() final  bool isLoading;
 final  List<FundingSourceModel> _fundingSources;
@override@JsonKey() List<FundingSourceModel> get fundingSources {
  if (_fundingSources is EqualUnmodifiableListView) return _fundingSources;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fundingSources);
}

@override final  FundingSourceModel? fundingSource;
@override final  String? error;

/// Create a copy of FundingSourceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FundingSourceModelCopyWith<_FundingSourceModel> get copyWith => __$FundingSourceModelCopyWithImpl<_FundingSourceModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FundingSourceModel&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._fundingSources, _fundingSources)&&(identical(other.fundingSource, fundingSource) || other.fundingSource == fundingSource)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_fundingSources),fundingSource,error);

@override
String toString() {
  return 'FundingSourceState(isLoading: $isLoading, fundingSources: $fundingSources, fundingSource: $fundingSource, error: $error)';
}


}

/// @nodoc
abstract mixin class _$FundingSourceModelCopyWith<$Res> implements $FundingSourceStateCopyWith<$Res> {
  factory _$FundingSourceModelCopyWith(_FundingSourceModel value, $Res Function(_FundingSourceModel) _then) = __$FundingSourceModelCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<FundingSourceModel> fundingSources, FundingSourceModel? fundingSource, String? error
});


@override $FundingSourceModelCopyWith<$Res>? get fundingSource;

}
/// @nodoc
class __$FundingSourceModelCopyWithImpl<$Res>
    implements _$FundingSourceModelCopyWith<$Res> {
  __$FundingSourceModelCopyWithImpl(this._self, this._then);

  final _FundingSourceModel _self;
  final $Res Function(_FundingSourceModel) _then;

/// Create a copy of FundingSourceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? fundingSources = null,Object? fundingSource = freezed,Object? error = freezed,}) {
  return _then(_FundingSourceModel(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,fundingSources: null == fundingSources ? _self._fundingSources : fundingSources // ignore: cast_nullable_to_non_nullable
as List<FundingSourceModel>,fundingSource: freezed == fundingSource ? _self.fundingSource : fundingSource // ignore: cast_nullable_to_non_nullable
as FundingSourceModel?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of FundingSourceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FundingSourceModelCopyWith<$Res>? get fundingSource {
    if (_self.fundingSource == null) {
    return null;
  }

  return $FundingSourceModelCopyWith<$Res>(_self.fundingSource!, (value) {
    return _then(_self.copyWith(fundingSource: value));
  });
}
}

// dart format on
