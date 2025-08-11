import 'package:dartz/dartz.dart';
import '../entities/task_entity.dart';
import '../repositories/tastk_repository.dart';
import '../../../../config/errors/failure.dart';

class RemoveLocalTaskItem {
  final TaskRepository repository;
  RemoveLocalTaskItem(this.repository);

  Future<Either<Failure, TaskEntity>> call(String taskId, int index) {
    return repository.removeLocalTaskItem(taskId, index);
  }
}