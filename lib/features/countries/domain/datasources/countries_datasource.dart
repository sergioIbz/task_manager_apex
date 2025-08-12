import '../../data/models/country/country_model.dart';
import '../../data/models/country_flag/country_flag_model.dart';

abstract class CountriesDataSource {
  Future<List<CountryFlagModel>> getCountries();
  Future<CountryModel> getCountry({
    required String countryCode,
  });
}