import 'package:dartz/dartz.dart';
import 'package:task_manager_apex/config/errors/failure.dart';
import 'package:task_manager_apex/features/task/domain/entities/task_entity.dart';
import 'package:task_manager_apex/features/task/domain/repositories/tastk_repository.dart';

class GetRemoteTasks {
  final TaskRepository repository;

  GetRemoteTasks(this.repository);

  Future<Either<Failure, List<TaskEntity>>> call() async {
    return await repository.getRemoteTasks();
  }
}