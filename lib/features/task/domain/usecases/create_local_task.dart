import 'package:dartz/dartz.dart';

import '../../../../config/errors/failure.dart';
import '../entities/task_entity.dart';
import '../repositories/tastk_repository.dart';

class CreateLocalTask {
  final TaskRepository repository;
  CreateLocalTask(this.repository);

  Future<Either<Failure, TaskEntity>> call(TaskEntity task) {
    return repository.createLocalTask(task);
  }
}