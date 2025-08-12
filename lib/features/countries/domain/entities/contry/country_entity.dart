import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_entity.freezed.dart';

@freezed
abstract class CountryEntity with _$CountryEntity {
  const factory CountryEntity({
    required String code,
    required String name,
    required String native,
    required String phone,
    required ContinentEntity continent,
    required String capital,
    required String currency,
    required List<LanguageEntity> languages,
    required String emoji,
    required String emojiU,
  }) = _CountryEntity;
}

@freezed
abstract class ContinentEntity with _$ContinentEntity {
  const factory ContinentEntity({
    required String name,
  }) = _ContinentEntity;
}

@freezed
abstract class LanguageEntity with _$LanguageEntity {
  const factory LanguageEntity({
    required String name,
  }) = _LanguageEntity;
}
