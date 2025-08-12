// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CountryModel {

 String get code; String get name; String get native; String get phone; ContinentModel get continent; String get capital; String get currency; List<LanguageModel> get languages; String get emoji; String get emojiU;
/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryModelCopyWith<CountryModel> get copyWith => _$CountryModelCopyWithImpl<CountryModel>(this as CountryModel, _$identity);

  /// Serializes this CountryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryModel&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.native, native) || other.native == native)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.continent, continent) || other.continent == continent)&&(identical(other.capital, capital) || other.capital == capital)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other.languages, languages)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.emojiU, emojiU) || other.emojiU == emojiU));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,native,phone,continent,capital,currency,const DeepCollectionEquality().hash(languages),emoji,emojiU);

@override
String toString() {
  return 'CountryModel(code: $code, name: $name, native: $native, phone: $phone, continent: $continent, capital: $capital, currency: $currency, languages: $languages, emoji: $emoji, emojiU: $emojiU)';
}


}

/// @nodoc
abstract mixin class $CountryModelCopyWith<$Res>  {
  factory $CountryModelCopyWith(CountryModel value, $Res Function(CountryModel) _then) = _$CountryModelCopyWithImpl;
@useResult
$Res call({
 String code, String name, String native, String phone, ContinentModel continent, String capital, String currency, List<LanguageModel> languages, String emoji, String emojiU
});


$ContinentModelCopyWith<$Res> get continent;

}
/// @nodoc
class _$CountryModelCopyWithImpl<$Res>
    implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._self, this._then);

  final CountryModel _self;
  final $Res Function(CountryModel) _then;

/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? name = null,Object? native = null,Object? phone = null,Object? continent = null,Object? capital = null,Object? currency = null,Object? languages = null,Object? emoji = null,Object? emojiU = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,native: null == native ? _self.native : native // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,continent: null == continent ? _self.continent : continent // ignore: cast_nullable_to_non_nullable
as ContinentModel,capital: null == capital ? _self.capital : capital // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,languages: null == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<LanguageModel>,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,emojiU: null == emojiU ? _self.emojiU : emojiU // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContinentModelCopyWith<$Res> get continent {
  
  return $ContinentModelCopyWith<$Res>(_self.continent, (value) {
    return _then(_self.copyWith(continent: value));
  });
}
}


/// Adds pattern-matching-related methods to [CountryModel].
extension CountryModelPatterns on CountryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryModel value)  $default,){
final _that = this;
switch (_that) {
case _CountryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryModel value)?  $default,){
final _that = this;
switch (_that) {
case _CountryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String name,  String native,  String phone,  ContinentModel continent,  String capital,  String currency,  List<LanguageModel> languages,  String emoji,  String emojiU)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String name,  String native,  String phone,  ContinentModel continent,  String capital,  String currency,  List<LanguageModel> languages,  String emoji,  String emojiU)  $default,) {final _that = this;
switch (_that) {
case _CountryModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String name,  String native,  String phone,  ContinentModel continent,  String capital,  String currency,  List<LanguageModel> languages,  String emoji,  String emojiU)?  $default,) {final _that = this;
switch (_that) {
case _CountryModel() when $default != null:
return $default(_that.code,_that.name,_that.native,_that.phone,_that.continent,_that.capital,_that.currency,_that.languages,_that.emoji,_that.emojiU);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountryModel implements CountryModel {
  const _CountryModel({required this.code, required this.name, required this.native, required this.phone, required this.continent, required this.capital, required this.currency, required final  List<LanguageModel> languages, required this.emoji, required this.emojiU}): _languages = languages;
  factory _CountryModel.fromJson(Map<String, dynamic> json) => _$CountryModelFromJson(json);

@override final  String code;
@override final  String name;
@override final  String native;
@override final  String phone;
@override final  ContinentModel continent;
@override final  String capital;
@override final  String currency;
 final  List<LanguageModel> _languages;
@override List<LanguageModel> get languages {
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_languages);
}

@override final  String emoji;
@override final  String emojiU;

/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryModelCopyWith<_CountryModel> get copyWith => __$CountryModelCopyWithImpl<_CountryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryModel&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.native, native) || other.native == native)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.continent, continent) || other.continent == continent)&&(identical(other.capital, capital) || other.capital == capital)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other._languages, _languages)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.emojiU, emojiU) || other.emojiU == emojiU));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,native,phone,continent,capital,currency,const DeepCollectionEquality().hash(_languages),emoji,emojiU);

@override
String toString() {
  return 'CountryModel(code: $code, name: $name, native: $native, phone: $phone, continent: $continent, capital: $capital, currency: $currency, languages: $languages, emoji: $emoji, emojiU: $emojiU)';
}


}

/// @nodoc
abstract mixin class _$CountryModelCopyWith<$Res> implements $CountryModelCopyWith<$Res> {
  factory _$CountryModelCopyWith(_CountryModel value, $Res Function(_CountryModel) _then) = __$CountryModelCopyWithImpl;
@override @useResult
$Res call({
 String code, String name, String native, String phone, ContinentModel continent, String capital, String currency, List<LanguageModel> languages, String emoji, String emojiU
});


@override $ContinentModelCopyWith<$Res> get continent;

}
/// @nodoc
class __$CountryModelCopyWithImpl<$Res>
    implements _$CountryModelCopyWith<$Res> {
  __$CountryModelCopyWithImpl(this._self, this._then);

  final _CountryModel _self;
  final $Res Function(_CountryModel) _then;

/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? name = null,Object? native = null,Object? phone = null,Object? continent = null,Object? capital = null,Object? currency = null,Object? languages = null,Object? emoji = null,Object? emojiU = null,}) {
  return _then(_CountryModel(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,native: null == native ? _self.native : native // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,continent: null == continent ? _self.continent : continent // ignore: cast_nullable_to_non_nullable
as ContinentModel,capital: null == capital ? _self.capital : capital // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,languages: null == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<LanguageModel>,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,emojiU: null == emojiU ? _self.emojiU : emojiU // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContinentModelCopyWith<$Res> get continent {
  
  return $ContinentModelCopyWith<$Res>(_self.continent, (value) {
    return _then(_self.copyWith(continent: value));
  });
}
}


/// @nodoc
mixin _$ContinentModel {

 String get name;
/// Create a copy of ContinentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContinentModelCopyWith<ContinentModel> get copyWith => _$ContinentModelCopyWithImpl<ContinentModel>(this as ContinentModel, _$identity);

  /// Serializes this ContinentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContinentModel&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'ContinentModel(name: $name)';
}


}

/// @nodoc
abstract mixin class $ContinentModelCopyWith<$Res>  {
  factory $ContinentModelCopyWith(ContinentModel value, $Res Function(ContinentModel) _then) = _$ContinentModelCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$ContinentModelCopyWithImpl<$Res>
    implements $ContinentModelCopyWith<$Res> {
  _$ContinentModelCopyWithImpl(this._self, this._then);

  final ContinentModel _self;
  final $Res Function(ContinentModel) _then;

/// Create a copy of ContinentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ContinentModel].
extension ContinentModelPatterns on ContinentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContinentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContinentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContinentModel value)  $default,){
final _that = this;
switch (_that) {
case _ContinentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContinentModel value)?  $default,){
final _that = this;
switch (_that) {
case _ContinentModel() when $default != null:
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
case _ContinentModel() when $default != null:
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
case _ContinentModel():
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
case _ContinentModel() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContinentModel implements ContinentModel {
  const _ContinentModel({required this.name});
  factory _ContinentModel.fromJson(Map<String, dynamic> json) => _$ContinentModelFromJson(json);

@override final  String name;

/// Create a copy of ContinentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContinentModelCopyWith<_ContinentModel> get copyWith => __$ContinentModelCopyWithImpl<_ContinentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContinentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContinentModel&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'ContinentModel(name: $name)';
}


}

/// @nodoc
abstract mixin class _$ContinentModelCopyWith<$Res> implements $ContinentModelCopyWith<$Res> {
  factory _$ContinentModelCopyWith(_ContinentModel value, $Res Function(_ContinentModel) _then) = __$ContinentModelCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$ContinentModelCopyWithImpl<$Res>
    implements _$ContinentModelCopyWith<$Res> {
  __$ContinentModelCopyWithImpl(this._self, this._then);

  final _ContinentModel _self;
  final $Res Function(_ContinentModel) _then;

/// Create a copy of ContinentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_ContinentModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$LanguageModel {

 String get name;
/// Create a copy of LanguageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguageModelCopyWith<LanguageModel> get copyWith => _$LanguageModelCopyWithImpl<LanguageModel>(this as LanguageModel, _$identity);

  /// Serializes this LanguageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageModel&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'LanguageModel(name: $name)';
}


}

/// @nodoc
abstract mixin class $LanguageModelCopyWith<$Res>  {
  factory $LanguageModelCopyWith(LanguageModel value, $Res Function(LanguageModel) _then) = _$LanguageModelCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$LanguageModelCopyWithImpl<$Res>
    implements $LanguageModelCopyWith<$Res> {
  _$LanguageModelCopyWithImpl(this._self, this._then);

  final LanguageModel _self;
  final $Res Function(LanguageModel) _then;

/// Create a copy of LanguageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LanguageModel].
extension LanguageModelPatterns on LanguageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LanguageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LanguageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LanguageModel value)  $default,){
final _that = this;
switch (_that) {
case _LanguageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LanguageModel value)?  $default,){
final _that = this;
switch (_that) {
case _LanguageModel() when $default != null:
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
case _LanguageModel() when $default != null:
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
case _LanguageModel():
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
case _LanguageModel() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LanguageModel implements LanguageModel {
  const _LanguageModel({required this.name});
  factory _LanguageModel.fromJson(Map<String, dynamic> json) => _$LanguageModelFromJson(json);

@override final  String name;

/// Create a copy of LanguageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LanguageModelCopyWith<_LanguageModel> get copyWith => __$LanguageModelCopyWithImpl<_LanguageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LanguageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LanguageModel&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'LanguageModel(name: $name)';
}


}

/// @nodoc
abstract mixin class _$LanguageModelCopyWith<$Res> implements $LanguageModelCopyWith<$Res> {
  factory _$LanguageModelCopyWith(_LanguageModel value, $Res Function(_LanguageModel) _then) = __$LanguageModelCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$LanguageModelCopyWithImpl<$Res>
    implements _$LanguageModelCopyWith<$Res> {
  __$LanguageModelCopyWithImpl(this._self, this._then);

  final _LanguageModel _self;
  final $Res Function(_LanguageModel) _then;

/// Create a copy of LanguageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_LanguageModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
