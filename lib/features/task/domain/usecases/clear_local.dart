import 'package:dartz/dartz.dart';

import '../../../../config/errors/failure.dart';
import '../repositories/tastk_repository.dart';

class ClearLocal {
  final TaskRepository repository;
  ClearLocal(this.repository);

  Future<Either<Failure, Unit>> call() {
    return repository.clearLocal();
  }
}