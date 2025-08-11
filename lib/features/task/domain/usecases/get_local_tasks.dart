import 'package:dartz/dartz.dart';
import '../entities/task_entity.dart';
import '../repositories/tastk_repository.dart';
import '../../../../config/errors/failure.dart';

class GetLocalTasks {
  final TaskRepository repository;
  GetLocalTasks(this.repository);

  Future<Either<Failure, List<TaskEntity>>> call() {
    return repository.getLocalTasks();
  }
}