import 'package:dartz/dartz.dart';

import '../../../../config/errors/failure.dart';
import '../entities/country_flag/contry_flag_entity.dart';
import '../repositories/countries_repository.dart';

class GetCountryNameAndFlag {
  final CountriesRepository repository;
  GetCountryNameAndFlag(this.repository);
  Future<Either<Failure, List<CountryFlagEntity>>> call() {
    return repository.getCountries();
  }
}
