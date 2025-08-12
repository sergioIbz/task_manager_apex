import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_manager_apex/config/di/dependency_injection.dart';
import 'package:task_manager_apex/config/errors/failure.dart';
import 'package:task_manager_apex/features/countries/domain/entities/contry/country_entity.dart';
import 'package:task_manager_apex/features/countries/domain/usecases/get_country_info.dart';

final getCountryInfoProvider = FutureProvider.family<Either<Failure, CountryEntity>, String>((ref, countryCode) {
  final usecase = GetCountryInfo(getIt());
  return usecase(countryCode);
});
