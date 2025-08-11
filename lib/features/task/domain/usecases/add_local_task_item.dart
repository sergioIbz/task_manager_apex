import 'package:dartz/dartz.dart';
import '../entities/task_entity.dart';

import '../repositories/tastk_repository.dart';
import '../../../../config/errors/failure.dart';

class AddLocalTaskItem {
  final TaskRepository repository;
  AddLocalTaskItem(this.repository);

  Future<Either<Failure, TaskEntity>> call(String taskId, TaskItemEntity item) {
    return repository.addLocalTaskItem(taskId, item);
  }
}