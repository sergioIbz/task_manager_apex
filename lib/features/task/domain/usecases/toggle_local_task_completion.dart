import 'package:dartz/dartz.dart';

import '../../../../config/errors/failure.dart';
import '../entities/task_entity.dart';
import '../repositories/tastk_repository.dart';

class ToggleLocalTaskCompletion {
  final TaskRepository repository;
  ToggleLocalTaskCompletion(this.repository);

  Future<Either<Failure, TaskEntity>> call(String id, bool isCompleted) {
    return repository.toggleLocalTaskCompletion(id, isCompleted);
  }
}