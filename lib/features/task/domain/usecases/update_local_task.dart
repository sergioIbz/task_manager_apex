import 'package:dartz/dartz.dart';
import '../entities/task_entity.dart';
import '../repositories/tastk_repository.dart';
import '../../../../config/errors/failure.dart';

class UpdateLocalTask {
  final TaskRepository repository;
  UpdateLocalTask(this.repository);

  Future<Either<Failure, TaskEntity>> call(
    String id, {
    String? title,
    bool? isCompleted,
    List<TaskItemEntity>? items,
  }) {
    return repository.updateLocalTask(
      id,
      title: title,
      isCompleted: isCompleted,
      items: items,
    );
  }
}