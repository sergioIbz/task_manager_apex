import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_manager_apex/config/di/dependency_injection.dart';
import 'package:task_manager_apex/config/errors/failure.dart';
import 'package:task_manager_apex/features/countries/domain/entities/country_flag/contry_flag_entity.dart';
import 'package:task_manager_apex/features/countries/domain/usecases/get_country_name_and_flag.dart';

final getCountryNameAndFlagProvider = FutureProvider<Either<Failure, List<CountryFlagEntity>>>((ref) {
  final usecase = GetCountryNameAndFlag(getIt());
  return usecase();
});
