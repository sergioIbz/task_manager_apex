
import '../entities/task_entity.dart';

abstract class LocalTaskDataSource {
  Future<List<TaskEntity>> getTasks();

  Future<TaskEntity?> getTaskById(String id);
  Future<void> addTasks(List<TaskEntity> tasks);
  Future<TaskEntity> createTask(TaskEntity task);
  Future<TaskEntity> updateTask(
    String id, {
    String? title,
    bool? isCompleted,
    List<TaskItemEntity>? items,
  });
  Future<void> deleteTask(String id);
  Future<TaskEntity> toggleTaskCompletion(String id, bool isCompleted);
  Future<TaskEntity> addTaskItem(String taskId, TaskItemEntity item);
  Future<TaskEntity> updateTaskItem(String taskId, int index, TaskItemEntity item);
  Future<TaskEntity> removeTaskItem(String taskId, int index);
  Future<TaskEntity> reorderTaskItems(String taskId, int oldIndex, int newIndex);
  Future<void> clear();
}