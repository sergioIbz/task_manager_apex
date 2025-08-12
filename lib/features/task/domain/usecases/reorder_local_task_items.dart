import 'package:dartz/dartz.dart';

import '../../../../config/errors/failure.dart';
import '../entities/task_entity.dart';
import '../repositories/tastk_repository.dart';

class ReorderLocalTaskItems {
  final TaskRepository repository;
  ReorderLocalTaskItems(this.repository);

  Future<Either<Failure, TaskEntity>> call(String taskId, int oldIndex, int newIndex) {
    return repository.reorderLocalTaskItems(taskId, oldIndex, newIndex);
  }
}