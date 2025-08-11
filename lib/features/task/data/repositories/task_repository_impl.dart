import 'package:dartz/dartz.dart';

import '../../../../config/errors/failure.dart';
import '../../domain/datasources/local_task_data_source.dart';
import '../../domain/datasources/remote_task_data_source.dart';
import '../../domain/entities/task_entity.dart';
import '../../domain/repositories/tastk_repository.dart';
import '../mappers/remote_task_mapper.dart';

class TaskRepositoryImpl implements TaskRepository {
  final RemoteTaskDatasource remoteTaskDatasource;
  final LocalTaskDataSource localTaskDataSource;

  TaskRepositoryImpl({
    required this.remoteTaskDatasource,
    required this.localTaskDataSource,
  });

  @override
  Future<Either<Failure, List<TaskEntity>>> getRemoteTasks() async {
    try {
      final response = await remoteTaskDatasource.getTasks();
      return Right(RemoteTaskMapper.toEntityList(response));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, TaskEntity>> addLocalTaskItem(
    String taskId,
    TaskItemEntity item,
  ) async {
    try {
      final result = await localTaskDataSource.addTaskItem(taskId, item);
      return Right(result);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> clearLocal() async {
    try {
      await localTaskDataSource.clear();
      return const Right(unit);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, TaskEntity>> createLocalTask(TaskEntity task) async {
    try {
      final result = await localTaskDataSource.createTask(task);
      return Right(result);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteLocalTask(String id) async {
    try {
      await localTaskDataSource.deleteTask(id);
      return const Right(unit);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, TaskEntity>> getLocalTaskById(String id) async {
    try {
      final result = await localTaskDataSource.getTaskById(id);
      if (result == null) return Left(Failure(message: 'Task not found'));
      return Right(result);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<TaskEntity>>> getLocalTasks() async {
    try {
      final result = await localTaskDataSource.getTasks();
      return Right(result);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, TaskEntity>> removeLocalTaskItem(
    String taskId,
    int index,
  ) async {
    try {
      final result = await localTaskDataSource.removeTaskItem(taskId, index);
      return Right(result);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, TaskEntity>> reorderLocalTaskItems(
    String taskId,
    int oldIndex,
    int newIndex,
  ) async {
    try {
      final result = await localTaskDataSource.reorderTaskItems(
        taskId,
        oldIndex,
        newIndex,
      );
      return Right(result);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, TaskEntity>> toggleLocalTaskCompletion(
    String id,
    bool isCompleted,
  ) async {
    try {
      final result = await localTaskDataSource.toggleTaskCompletion(
        id,
        isCompleted,
      );
      return Right(result);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, TaskEntity>> updateLocalTask(
    String id, {
    String? title,
    bool? isCompleted,
    List<TaskItemEntity>? items,
  }) async {
    try {
      final result = await localTaskDataSource.updateTask(
        id,
        title: title,
        isCompleted: isCompleted,
        items: items,
      );
      return Right(result);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, TaskEntity>> updateLocalTaskItem(
    String taskId,
    int index,
    TaskItemEntity item,
  ) async {
    try {
      final result = await localTaskDataSource.updateTaskItem(
        taskId,
        index,
        item,
      );
      return Right(result);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> addTasks(List<TaskEntity> tasks) async {
    try {
      await localTaskDataSource.addTasks(tasks);
      return const Right(unit);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
