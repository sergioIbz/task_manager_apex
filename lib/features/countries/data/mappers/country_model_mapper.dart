import '../../domain/entities/contry/country_entity.dart';
import '../models/country/country_model.dart';


class CountryModelMapper {
  static CountryEntity fromModelToEntity(CountryModel model) {
    return CountryEntity(
      code: model.code,
      name: model.name,
      native: model.native,
      phone: model.phone,
      continent: ContinentEntity(name: model.continent.name),
      capital: model.capital,
      currency: model.currency,
      languages: model.languages
          .map((lang) => LanguageEntity(name: lang.name))
          .toList(),
      emoji: model.emoji,
      emojiU: model.emojiU,
    );
  }

  static CountryModel fromEntityToModel(CountryEntity entity) {
    return CountryModel(
      code: entity.code,
      name: entity.name,
      native: entity.native,
      phone: entity.phone,
      continent: ContinentModel(name: entity.continent.name),
      capital: entity.capital,
      currency: entity.currency,
      languages: entity.languages
          .map((lang) => LanguageModel(name: lang.name))
          .toList(),
      emoji: entity.emoji,
      emojiU: entity.emojiU,
    );
  }
}
