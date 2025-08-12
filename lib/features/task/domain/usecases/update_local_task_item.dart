import 'package:dartz/dartz.dart';

import '../../../../config/errors/failure.dart';
import '../entities/task_entity.dart';
import '../repositories/tastk_repository.dart';

class UpdateLocalTaskItem {
  final TaskRepository repository;
  UpdateLocalTaskItem(this.repository);

  Future<Either<Failure, TaskEntity>> call(String taskId, int index, TaskItemEntity item) {
    return repository.updateLocalTaskItem(taskId, index, item);
  }
}