import 'package:dartz/dartz.dart';

import '../../../../config/errors/failure.dart';
import '../entities/contry/country_entity.dart';
import '../repositories/countries_repository.dart';

class GetCountryInfo {
  final CountriesRepository repository;

  GetCountryInfo(this.repository);

  Future<Either<Failure, CountryEntity>> call(String countryCode) {
    return repository.getCountry(countryCode: countryCode);
  }
}
