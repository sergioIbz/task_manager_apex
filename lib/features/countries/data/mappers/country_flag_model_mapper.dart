import '../../domain/entities/country_flag/contry_flag_entity.dart';
import '../models/country_flag/country_flag_model.dart';

class CountryFlagModelMapper {
  static CountryFlagEntity fromModelToEntity(CountryFlagModel model) {
    return CountryFlagEntity(
      countryCode: model.countryCode,
      countryName: model.countryName,
      flagIcon: model.flagIcon,
    );
  }

  static CountryFlagModel fromEntityToModel(CountryFlagEntity entity) {
    return CountryFlagModel(
      countryCode: entity.countryCode,
      countryName: entity.countryName,
      flagIcon: entity.flagIcon,
    );
  }

  static List<CountryFlagEntity> fromModelListToEntityList(List<CountryFlagModel> models) {
    return models.map((m) => fromModelToEntity(m)).toList();
  }

  static List<CountryFlagModel> fromEntityListToModelList(List<CountryFlagEntity> entities) {
    return entities.map((e) => fromEntityToModel(e)).toList();
  }
}
