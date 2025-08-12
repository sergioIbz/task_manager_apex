import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@freezed
abstract class CountryModel with _$CountryModel {
  const factory CountryModel({
    required String code,
    required String name,
    required String native,
    required String phone,
    required ContinentModel continent,
    required String capital,
    required String currency,
    required List<LanguageModel> languages,
    required String emoji,
    required String emojiU,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
}

@freezed
abstract class ContinentModel with _$ContinentModel {
  const factory ContinentModel({
    required String name,
  }) = _ContinentModel;

  factory ContinentModel.fromJson(Map<String, dynamic> json) =>
      _$ContinentModelFromJson(json);
}

@freezed
abstract class LanguageModel with _$LanguageModel {
  const factory LanguageModel({
    required String name,
  }) = _LanguageModel;

  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);
}
