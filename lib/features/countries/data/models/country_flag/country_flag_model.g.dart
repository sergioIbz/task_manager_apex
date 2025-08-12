// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_flag_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CountryFlagModel _$CountryFlagModelFromJson(Map<String, dynamic> json) =>
    _CountryFlagModel(
      countryCode: json['countryCode'] as String,
      countryName: json['countryName'] as String,
      flagIcon: json['flagIcon'] as String,
    );

Map<String, dynamic> _$CountryFlagModelToJson(_CountryFlagModel instance) =>
    <String, dynamic>{
      'countryCode': instance.countryCode,
      'countryName': instance.countryName,
      'flagIcon': instance.flagIcon,
    };
