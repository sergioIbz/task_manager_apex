import 'package:task_manager_apex/config/network/graph_client.dart';
import 'package:task_manager_apex/features/countries/data/models/country/country_model.dart';
import 'package:task_manager_apex/features/countries/data/models/country_flag/country_flag_model.dart';
import 'package:task_manager_apex/features/countries/domain/datasources/countries_datasource.dart';

class CountriesDatasourceImpl implements CountriesDataSource {
  final GraphClient graphClient;

  CountriesDatasourceImpl({required this.graphClient});

  @override
  Future<List<CountryFlagModel>> getCountries() async {
    const query = r'''
      query GetAllCountries {
        countries {
          code
          name
          emoji
        }
      }
    ''';

    final response = await graphClient.query(query);
    final countries = response.data['data']['countries'] as List;
    return countries
        .map((country) => CountryFlagModel(
              countryCode: country['code'],
              countryName: country['name'],
              flagIcon: country['emoji'],
            ))
        .toList();
  }

  @override
  Future<CountryModel> getCountry({required String countryCode}) async {
    const query = r'''
      query GetCountry($code: ID!) {
        country(code: $code) {
          code
          name
          native
          phone
          continent {
            name
          }
          capital
          currency
          languages {
            name
          }
          emoji
          emojiU
        }
      }
    ''';

    final response = await graphClient.query(
      query,
      variables: {'code': countryCode},
    );

    final countryData = response.data['data']['country'];
    return CountryModel.fromJson(countryData);
  }
}
