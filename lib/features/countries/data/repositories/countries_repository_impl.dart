import 'package:dartz/dartz.dart';

import '../../../../config/errors/failure.dart';
import '../../domain/datasources/countries_datasource.dart';
import '../../domain/entities/contry/country_entity.dart';
import '../../domain/entities/country_flag/contry_flag_entity.dart';
import '../../domain/repositories/countries_repository.dart';
import '../mappers/country_flag_model_mapper.dart';
import '../mappers/country_model_mapper.dart';

class CountriesRepositoryImpl implements CountriesRepository {
  final CountriesDataSource countriesDataSource;

  CountriesRepositoryImpl({required this.countriesDataSource});

  @override
  Future<Either<Failure, List<CountryFlagEntity>>> getCountries() async {
    try {
      final result = await countriesDataSource.getCountries();
      return Right(CountryFlagModelMapper.fromModelListToEntityList(result));
    } catch (e) {
      return Left(Failure( message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, CountryEntity>> getCountry({
    required String countryCode,
  }) async {
    try {
      final result = await countriesDataSource.getCountry(
        countryCode: countryCode,
      );
      return Right(CountryModelMapper.fromModelToEntity(result));
    } catch (e) {
      return Left(Failure(message:e.toString(), ));
    }
  }
}
