import 'package:dartz/dartz.dart';

import '../../../../config/errors/failure.dart';
import '../entities/task_entity.dart';
import '../repositories/tastk_repository.dart';

class GetLocalTaskById {
  final TaskRepository repository;
  GetLocalTaskById(this.repository);

  Future<Either<Failure, TaskEntity>> call(String id) {
    return repository.getLocalTaskById(id);
  }
}