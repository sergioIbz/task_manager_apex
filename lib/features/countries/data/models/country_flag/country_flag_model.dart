import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_flag_model.freezed.dart';
part 'country_flag_model.g.dart';

@freezed
abstract class CountryFlagModel with _$CountryFlagModel {
  const factory CountryFlagModel({
    required String countryCode,
    required String countryName,
    required String flagIcon,
  }) = _CountryFlagModel;

  factory CountryFlagModel.fromJson(Map<String, dynamic> json) =>
      _$CountryFlagModelFromJson(json);
}
