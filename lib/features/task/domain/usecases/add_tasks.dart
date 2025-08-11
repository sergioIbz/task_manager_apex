import 'package:dartz/dartz.dart';

import '../../../../config/errors/failure.dart';
import '../entities/task_entity.dart';
import '../repositories/tastk_repository.dart';

class AddTasks {
  final TaskRepository repository;

  AddTasks( this.repository);

  Future<Either<Failure, Unit>> call(List<TaskEntity> task) async {
    return await repository.addTasks(task);
  }
}