// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contry_flag_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CountryFlagEntity {

 String get countryCode; String get countryName; String get flagIcon;
/// Create a copy of CountryFlagEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryFlagEntityCopyWith<CountryFlagEntity> get copyWith => _$CountryFlagEntityCopyWithImpl<CountryFlagEntity>(this as CountryFlagEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryFlagEntity&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.flagIcon, flagIcon) || other.flagIcon == flagIcon));
}


@override
int get hashCode => Object.hash(runtimeType,countryCode,countryName,flagIcon);

@override
String toString() {
  return 'CountryFlagEntity(countryCode: $countryCode, countryName: $countryName, flagIcon: $flagIcon)';
}


}

/// @nodoc
abstract mixin class $CountryFlagEntityCopyWith<$Res>  {
  factory $CountryFlagEntityCopyWith(CountryFlagEntity value, $Res Function(CountryFlagEntity) _then) = _$CountryFlagEntityCopyWithImpl;
@useResult
$Res call({
 String countryCode, String countryName, String flagIcon
});




}
/// @nodoc
class _$CountryFlagEntityCopyWithImpl<$Res>
    implements $CountryFlagEntityCopyWith<$Res> {
  _$CountryFlagEntityCopyWithImpl(this._self, this._then);

  final CountryFlagEntity _self;
  final $Res Function(CountryFlagEntity) _then;

/// Create a copy of CountryFlagEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? countryCode = null,Object? countryName = null,Object? flagIcon = null,}) {
  return _then(_self.copyWith(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,countryName: null == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String,flagIcon: null == flagIcon ? _self.flagIcon : flagIcon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CountryFlagEntity].
extension CountryFlagEntityPatterns on CountryFlagEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryFlagEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryFlagEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryFlagEntity value)  $default,){
final _that = this;
switch (_that) {
case _CountryFlagEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryFlagEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CountryFlagEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String countryCode,  String countryName,  String flagIcon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryFlagEntity() when $default != null:
return $default(_that.countryCode,_that.countryName,_that.flagIcon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String countryCode,  String countryName,  String flagIcon)  $default,) {final _that = this;
switch (_that) {
case _CountryFlagEntity():
return $default(_that.countryCode,_that.countryName,_that.flagIcon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String countryCode,  String countryName,  String flagIcon)?  $default,) {final _that = this;
switch (_that) {
case _CountryFlagEntity() when $default != null:
return $default(_that.countryCode,_that.countryName,_that.flagIcon);case _:
  return null;

}
}

}

/// @nodoc


class _CountryFlagEntity implements CountryFlagEntity {
  const _CountryFlagEntity({required this.countryCode, required this.countryName, required this.flagIcon});
  

@override final  String countryCode;
@override final  String countryName;
@override final  String flagIcon;

/// Create a copy of CountryFlagEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryFlagEntityCopyWith<_CountryFlagEntity> get copyWith => __$CountryFlagEntityCopyWithImpl<_CountryFlagEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryFlagEntity&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.flagIcon, flagIcon) || other.flagIcon == flagIcon));
}


@override
int get hashCode => Object.hash(runtimeType,countryCode,countryName,flagIcon);

@override
String toString() {
  return 'CountryFlagEntity(countryCode: $countryCode, countryName: $countryName, flagIcon: $flagIcon)';
}


}

/// @nodoc
abstract mixin class _$CountryFlagEntityCopyWith<$Res> implements $CountryFlagEntityCopyWith<$Res> {
  factory _$CountryFlagEntityCopyWith(_CountryFlagEntity value, $Res Function(_CountryFlagEntity) _then) = __$CountryFlagEntityCopyWithImpl;
@override @useResult
$Res call({
 String countryCode, String countryName, String flagIcon
});




}
/// @nodoc
class __$CountryFlagEntityCopyWithImpl<$Res>
    implements _$CountryFlagEntityCopyWith<$Res> {
  __$CountryFlagEntityCopyWithImpl(this._self, this._then);

  final _CountryFlagEntity _self;
  final $Res Function(_CountryFlagEntity) _then;

/// Create a copy of CountryFlagEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? countryCode = null,Object? countryName = null,Object? flagIcon = null,}) {
  return _then(_CountryFlagEntity(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,countryName: null == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String,flagIcon: null == flagIcon ? _self.flagIcon : flagIcon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
