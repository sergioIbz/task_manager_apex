import 'package:dartz/dartz.dart';

import '../../../../config/errors/failure.dart';
import '../entities/contry/country_entity.dart';
import '../entities/country_flag/contry_flag_entity.dart';

abstract class CountriesRepository {
  Future<Either<Failure, List<CountryFlagEntity>>> getCountries();
  Future<Either<Failure, CountryEntity>> getCountry({
    required String countryCode,
  });
}
