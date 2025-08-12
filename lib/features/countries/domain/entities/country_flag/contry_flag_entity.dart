import 'package:freezed_annotation/freezed_annotation.dart';

part 'contry_flag_entity.freezed.dart';

@freezed
abstract class CountryFlagEntity with _$CountryFlagEntity {
  const factory CountryFlagEntity({
    required String countryCode,
    required String countryName,
    required String flagIcon,
  }) = _CountryFlagEntity;
}
