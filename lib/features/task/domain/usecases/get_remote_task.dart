import 'package:dartz/dartz.dart';

import '../../../../config/errors/failure.dart';
import '../entities/task_entity.dart';
import '../repositories/tastk_repository.dart';

class GetRemoteTasks {
  final TaskRepository repository;

  GetRemoteTasks(this.repository);

  Future<Either<Failure, List<TaskEntity>>> call() async {
    return await repository.getRemoteTasks();
  }
}