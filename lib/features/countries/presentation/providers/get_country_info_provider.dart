import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/di/dependency_injection.dart';
import '../../../../config/errors/failure.dart';
import '../../domain/entities/contry/country_entity.dart';
import '../../domain/usecases/get_country_info.dart';

final getCountryInfoProvider = FutureProvider.family<Either<Failure, CountryEntity>, String>((ref, countryCode) {
  final usecase = GetCountryInfo(getIt());
  return usecase(countryCode);
});
