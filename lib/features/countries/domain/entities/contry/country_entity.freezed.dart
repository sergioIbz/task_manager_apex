// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CountryEntity {

 String get code; String get name; String get native; String get phone; ContinentEntity get continent; String get capital; String get currency; List<LanguageEntity> get languages; String get emoji; String get emojiU;
/// Create a copy of CountryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryEntityCopyWith<CountryEntity> get copyWith => _$CountryEntityCopyWithImpl<CountryEntity>(this as CountryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryEntity&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.native, native) || other.native == native)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.continent, continent) || other.continent == continent)&&(identical(other.capital, capital) || other.capital == capital)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other.languages, languages)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.emojiU, emojiU) || other.emojiU == emojiU));
}


@override
int get hashCode => Object.hash(runtimeType,code,name,native,phone,continent,capital,currency,const DeepCollectionEquality().hash(languages),emoji,emojiU);

@override
String toString() {
  return 'CountryEntity(code: $code, name: $name, native: $native, phone: $phone, continent: $continent, capital: $capital, currency: $currency, languages: $languages, emoji: $emoji, emojiU: $emojiU)';
}


}

/// @nodoc
abstract mixin class $CountryEntityCopyWith<$Res>  {
  factory $CountryEntityCopyWith(CountryEntity value, $Res Function(CountryEntity) _then) = _$CountryEntityCopyWithImpl;
@useResult
$Res call({
 String code, String name, String native, String phone, ContinentEntity continent, String capital, String currency, List<LanguageEntity> languages, String emoji, String emojiU
});


$ContinentEntityCopyWith<$Res> get continent;

}
/// @nodoc
class _$CountryEntityCopyWithImpl<$Res>
    implements $CountryEntityCopyWith<$Res> {
  _$CountryEntityCopyWithImpl(this._self, this._then);

  final CountryEntity _self;
  final $Res Function(CountryEntity) _then;

/// Create a copy of CountryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? name = null,Object? native = null,Object? phone = null,Object? continent = null,Object? capital = null,Object? currency = null,Object? languages = null,Object? emoji = null,Object? emojiU = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,native: null == native ? _self.native : native // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,continent: null == continent ? _self.continent : continent // ignore: cast_nullable_to_non_nullable
as ContinentEntity,capital: null == capital ? _self.capital : capital // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,languages: null == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<LanguageEntity>,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,emojiU: null == emojiU ? _self.emojiU : emojiU // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CountryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContinentEntityCopyWith<$Res> get continent {
  
  return $ContinentEntityCopyWith<$Res>(_self.continent, (value) {
    return _then(_self.copyWith(continent: value));
  });
}
}


/// Adds pattern-matching-related methods to [CountryEntity].
extension CountryEntityPatterns on CountryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryEntity value)  $default,){
final _that = this;
switch (_that) {
case _CountryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CountryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String name,  String native,  String phone,  ContinentEntity continent,  String capital,  String currency,  List<LanguageEntity> languages,  String emoji,  String emojiU)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryEntity() when $default != null:
return $default(_that.code,_that.name,_that.native,_that.phone,_that.continent,_that.capital,_that.currency,_that.languages,_that.emoji,_that.emojiU);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String name,  String native,  String phone,  ContinentEntity continent,  String capital,  String currency,  List<LanguageEntity> languages,  String emoji,  String emojiU)  $default,) {final _that = this;
switch (_that) {
case _CountryEntity():
return $default(_that.code,_that.name,_that.native,_that.phone,_that.continent,_that.capital,_that.currency,_that.languages,_that.emoji,_that.emojiU);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String name,  String native,  String phone,  ContinentEntity continent,  String capital,  String currency,  List<LanguageEntity> languages,  String emoji,  String emojiU)?  $default,) {final _that = this;
switch (_that) {
case _CountryEntity() when $default != null:
return $default(_that.code,_that.name,_that.native,_that.phone,_that.continent,_that.capital,_that.currency,_that.languages,_that.emoji,_that.emojiU);case _:
  return null;

}
}

}

/// @nodoc


class _CountryEntity implements CountryEntity {
  const _CountryEntity({required this.code, required this.name, required this.native, required this.phone, required this.continent, required this.capital, required this.currency, required final  List<LanguageEntity> languages, required this.emoji, required this.emojiU}): _languages = languages;
  

@override final  String code;
@override final  String name;
@override final  String native;
@override final  String phone;
@override final  ContinentEntity continent;
@override final  String capital;
@override final  String currency;
 final  List<LanguageEntity> _languages;
@override List<LanguageEntity> get languages {
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_languages);
}

@override final  String emoji;
@override final  String emojiU;

/// Create a copy of CountryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryEntityCopyWith<_CountryEntity> get copyWith => __$CountryEntityCopyWithImpl<_CountryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryEntity&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.native, native) || other.native == native)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.continent, continent) || other.continent == continent)&&(identical(other.capital, capital) || other.capital == capital)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other._languages, _languages)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.emojiU, emojiU) || other.emojiU == emojiU));
}


@override
int get hashCode => Object.hash(runtimeType,code,name,native,phone,continent,capital,currency,const DeepCollectionEquality().hash(_languages),emoji,emojiU);

@override
String toString() {
  return 'CountryEntity(code: $code, name: $name, native: $native, phone: $phone, continent: $continent, capital: $capital, currency: $currency, languages: $languages, emoji: $emoji, emojiU: $emojiU)';
}


}

/// @nodoc
abstract mixin class _$CountryEntityCopyWith<$Res> implements $CountryEntityCopyWith<$Res> {
  factory _$CountryEntityCopyWith(_CountryEntity value, $Res Function(_CountryEntity) _then) = __$CountryEntityCopyWithImpl;
@override @useResult
$Res call({
 String code, String name, String native, String phone, ContinentEntity continent, String capital, String currency, List<LanguageEntity> languages, String emoji, String emojiU
});


@override $ContinentEntityCopyWith<$Res> get continent;

}
/// @nodoc
class __$CountryEntityCopyWithImpl<$Res>
    implements _$CountryEntityCopyWith<$Res> {
  __$CountryEntityCopyWithImpl(this._self, this._then);

  final _CountryEntity _self;
  final $Res Function(_CountryEntity) _then;

/// Create a copy of CountryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? name = null,Object? native = null,Object? phone = null,Object? continent = null,Object? capital = null,Object? currency = null,Object? languages = null,Object? emoji = null,Object? emojiU = null,}) {
  return _then(_CountryEntity(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,native: null == native ? _self.native : native // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,continent: null == continent ? _self.continent : continent // ignore: cast_nullable_to_non_nullable
as ContinentEntity,capital: null == capital ? _self.capital : capital // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,languages: null == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<LanguageEntity>,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,emojiU: null == emojiU ? _self.emojiU : emojiU // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CountryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContinentEntityCopyWith<$Res> get continent {
  
  return $ContinentEntityCopyWith<$Res>(_self.continent, (value) {
    return _then(_self.copyWith(continent: value));
  });
}
}

/// @nodoc
mixin _$ContinentEntity {

 String get name;
/// Create a copy of ContinentEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContinentEntityCopyWith<ContinentEntity> get copyWith => _$ContinentEntityCopyWithImpl<ContinentEntity>(this as ContinentEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContinentEntity&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'ContinentEntity(name: $name)';
}


}

/// @nodoc
abstract mixin class $ContinentEntityCopyWith<$Res>  {
  factory $ContinentEntityCopyWith(ContinentEntity value, $Res Function(ContinentEntity) _then) = _$ContinentEntityCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$ContinentEntityCopyWithImpl<$Res>
    implements $ContinentEntityCopyWith<$Res> {
  _$ContinentEntityCopyWithImpl(this._self, this._then);

  final ContinentEntity _self;
  final $Res Function(ContinentEntity) _then;

/// Create a copy of ContinentEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ContinentEntity].
extension ContinentEntityPatterns on ContinentEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContinentEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContinentEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContinentEntity value)  $default,){
final _that = this;
switch (_that) {
case _ContinentEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContinentEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ContinentEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContinentEntity() when $default != null:
return $default(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _ContinentEntity():
return $default(_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _ContinentEntity() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _ContinentEntity implements ContinentEntity {
  const _ContinentEntity({required this.name});
  

@override final  String name;

/// Create a copy of ContinentEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContinentEntityCopyWith<_ContinentEntity> get copyWith => __$ContinentEntityCopyWithImpl<_ContinentEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContinentEntity&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'ContinentEntity(name: $name)';
}


}

/// @nodoc
abstract mixin class _$ContinentEntityCopyWith<$Res> implements $ContinentEntityCopyWith<$Res> {
  factory _$ContinentEntityCopyWith(_ContinentEntity value, $Res Function(_ContinentEntity) _then) = __$ContinentEntityCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$ContinentEntityCopyWithImpl<$Res>
    implements _$ContinentEntityCopyWith<$Res> {
  __$ContinentEntityCopyWithImpl(this._self, this._then);

  final _ContinentEntity _self;
  final $Res Function(_ContinentEntity) _then;

/// Create a copy of ContinentEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_ContinentEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$LanguageEntity {

 String get name;
/// Create a copy of LanguageEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguageEntityCopyWith<LanguageEntity> get copyWith => _$LanguageEntityCopyWithImpl<LanguageEntity>(this as LanguageEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageEntity&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'LanguageEntity(name: $name)';
}


}

/// @nodoc
abstract mixin class $LanguageEntityCopyWith<$Res>  {
  factory $LanguageEntityCopyWith(LanguageEntity value, $Res Function(LanguageEntity) _then) = _$LanguageEntityCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$LanguageEntityCopyWithImpl<$Res>
    implements $LanguageEntityCopyWith<$Res> {
  _$LanguageEntityCopyWithImpl(this._self, this._then);

  final LanguageEntity _self;
  final $Res Function(LanguageEntity) _then;

/// Create a copy of LanguageEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LanguageEntity].
extension LanguageEntityPatterns on LanguageEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LanguageEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LanguageEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LanguageEntity value)  $default,){
final _that = this;
switch (_that) {
case _LanguageEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LanguageEntity value)?  $default,){
final _that = this;
switch (_that) {
case _LanguageEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LanguageEntity() when $default != null:
return $default(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _LanguageEntity():
return $default(_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _LanguageEntity() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _LanguageEntity implements LanguageEntity {
  const _LanguageEntity({required this.name});
  

@override final  String name;

/// Create a copy of LanguageEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LanguageEntityCopyWith<_LanguageEntity> get copyWith => __$LanguageEntityCopyWithImpl<_LanguageEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LanguageEntity&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'LanguageEntity(name: $name)';
}


}

/// @nodoc
abstract mixin class _$LanguageEntityCopyWith<$Res> implements $LanguageEntityCopyWith<$Res> {
  factory _$LanguageEntityCopyWith(_LanguageEntity value, $Res Function(_LanguageEntity) _then) = __$LanguageEntityCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$LanguageEntityCopyWithImpl<$Res>
    implements _$LanguageEntityCopyWith<$Res> {
  __$LanguageEntityCopyWithImpl(this._self, this._then);

  final _LanguageEntity _self;
  final $Res Function(_LanguageEntity) _then;

/// Create a copy of LanguageEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_LanguageEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
