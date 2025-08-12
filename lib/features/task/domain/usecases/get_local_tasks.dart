import 'package:dartz/dartz.dart';

import '../../../../config/errors/failure.dart';
import '../entities/task_entity.dart';
import '../repositories/tastk_repository.dart';

class GetLocalTasks {
  final TaskRepository repository;
  GetLocalTasks(this.repository);

  Future<Either<Failure, List<TaskEntity>>> call() {
    return repository.getLocalTasks();
  }
}