import 'package:dartz/dartz.dart';

import '../../../../config/errors/failure.dart';
import '../entities/task_entity.dart';




abstract class TaskRepository {
  Future<Either<Failure, List<TaskEntity>>> getRemoteTasks();

  Future<Either<Failure, List<TaskEntity>>> getLocalTasks();
  Future<Either<Failure, TaskEntity>> getLocalTaskById(String id);

  Future<Either<Failure, TaskEntity>> createLocalTask(TaskEntity task);
  Future<Either<Failure, Unit>> addTasks(List<TaskEntity> task);

  Future<Either<Failure, TaskEntity>> updateLocalTask(
    String id, {
    String? title,
    bool? isCompleted,
    List<TaskItemEntity>? items,
  });

  Future<Either<Failure, Unit>> deleteLocalTask(String id);

  Future<Either<Failure, TaskEntity>> toggleLocalTaskCompletion(String id, bool isCompleted);

  Future<Either<Failure, TaskEntity>> addLocalTaskItem(String taskId, TaskItemEntity item);
  Future<Either<Failure, TaskEntity>> updateLocalTaskItem(String taskId, int index, TaskItemEntity item);
  Future<Either<Failure, TaskEntity>> removeLocalTaskItem(String taskId, int index);
  Future<Either<Failure, TaskEntity>> reorderLocalTaskItems(String taskId, int oldIndex, int newIndex);

  Future<Either<Failure, Unit>> clearLocal();
}
