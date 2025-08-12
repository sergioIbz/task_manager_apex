import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/di/dependency_injection.dart';
import '../../../../config/errors/failure.dart';
import '../../domain/entities/country_flag/contry_flag_entity.dart';
import '../../domain/usecases/get_country_name_and_flag.dart';

final getCountryNameAndFlagProvider = FutureProvider<Either<Failure, List<CountryFlagEntity>>>((ref) {
  final usecase = GetCountryNameAndFlag(getIt());
  return usecase();
});
