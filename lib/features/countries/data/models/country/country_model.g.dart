// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CountryModel _$CountryModelFromJson(Map<String, dynamic> json) =>
    _CountryModel(
      code: json['code'] as String,
      name: json['name'] as String,
      native: json['native'] as String,
      phone: json['phone'] as String,
      continent: ContinentModel.fromJson(
        json['continent'] as Map<String, dynamic>,
      ),
      capital: json['capital'] as String,
      currency: json['currency'] as String,
      languages: (json['languages'] as List<dynamic>)
          .map((e) => LanguageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      emoji: json['emoji'] as String,
      emojiU: json['emojiU'] as String,
    );

Map<String, dynamic> _$CountryModelToJson(_CountryModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'native': instance.native,
      'phone': instance.phone,
      'continent': instance.continent,
      'capital': instance.capital,
      'currency': instance.currency,
      'languages': instance.languages,
      'emoji': instance.emoji,
      'emojiU': instance.emojiU,
    };

_ContinentModel _$ContinentModelFromJson(Map<String, dynamic> json) =>
    _ContinentModel(name: json['name'] as String);

Map<String, dynamic> _$ContinentModelToJson(_ContinentModel instance) =>
    <String, dynamic>{'name': instance.name};

_LanguageModel _$LanguageModelFromJson(Map<String, dynamic> json) =>
    _LanguageModel(name: json['name'] as String);

Map<String, dynamic> _$LanguageModelToJson(_LanguageModel instance) =>
    <String, dynamic>{'name': instance.name};
