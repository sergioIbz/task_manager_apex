import 'package:dartz/dartz.dart';
import 'package:task_manager_apex/config/errors/failure.dart';
import 'package:task_manager_apex/features/countries/domain/entities/country_flag/contry_flag_entity.dart';
import 'package:task_manager_apex/features/countries/domain/repositories/countries_repository.dart';

class GetCountryNameAndFlag {
  final CountriesRepository repository;
  GetCountryNameAndFlag(this.repository);
  Future<Either<Failure, List<CountryFlagEntity>>> call() {
    return repository.getCountries();
  }
}
