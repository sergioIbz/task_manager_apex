import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../config/di/dependency_injection.dart';
import '../../../../config/errors/failure.dart';
import '../../domain/entities/task_entity.dart';
import '../../domain/usecases/add_local_task_item.dart';
import '../../domain/usecases/add_tasks.dart';
import '../../domain/usecases/clear_local.dart';
import '../../domain/usecases/create_local_task.dart';
import '../../domain/usecases/delete_local_task.dart';
import '../../domain/usecases/get_local_task_by_id.dart';
import '../../domain/usecases/get_local_tasks.dart';
import '../../domain/usecases/get_remote_task.dart';
import '../../domain/usecases/remove_local_task_item.dart';
import '../../domain/usecases/reorder_local_task_items.dart';
import '../../domain/usecases/toggle_local_task_completion.dart';
import '../../domain/usecases/update_local_task.dart';
import '../../domain/usecases/update_local_task_item.dart';

class TaskState {
  final List<TaskEntity> tasks;
  final bool isLoading;
  final Failure? failure;

  const TaskState({
    this.tasks = const [],
    this.isLoading = false,
    this.failure,
  });

  TaskState copyWith({
    List<TaskEntity>? tasks,
    bool? isLoading,
    Failure? failure,
  }) {
    return TaskState(
      tasks: tasks ?? this.tasks,
      isLoading: isLoading ?? this.isLoading,
      failure: failure,
    );
  }
}

class TaskNotifier extends StateNotifier<TaskState> {
  static const _fetchedKey = 'remote_tasks_fetched';
  final GetRemoteTasks getRemoteTasks;
  final GetLocalTasks getLocalTasks;
  final GetLocalTaskById getLocalTaskById;
  final CreateLocalTask createLocalTask;
  final DeleteLocalTask deleteLocalTask;
  final ClearLocal clearLocal;
  final AddLocalTaskItem addLocalTaskItem;
  final RemoveLocalTaskItem removeLocalTaskItem;
  final ReorderLocalTaskItems reorderLocalTaskItems;
  final ToggleLocalTaskCompletion toggleLocalTaskCompletion;
  final UpdateLocalTask updateLocalTask;
  final UpdateLocalTaskItem updateLocalTaskItem;
  final AddTasks addTasks;

  TaskNotifier({
    required this.getRemoteTasks,
    required this.getLocalTasks,
    required this.getLocalTaskById,
    required this.createLocalTask,
    required this.deleteLocalTask,
    required this.clearLocal,
    required this.addLocalTaskItem,
    required this.removeLocalTaskItem,
    required this.reorderLocalTaskItems,
    required this.toggleLocalTaskCompletion,
    required this.updateLocalTask,
    required this.updateLocalTaskItem,
    required this.addTasks,
  }) : super(const TaskState());

  Future<void> fetchRemoteTasksOnce() async {
    final prefs = await SharedPreferences.getInstance();
    final fetched = prefs.getBool(_fetchedKey) ?? false;
    if (fetched) return;
    final ok = await fetchRemoteTasks();
    if (ok) {
      await prefs.setBool(_fetchedKey, true);
    }
  }
  

  Future<bool> fetchRemoteTasks() async {
    state = state.copyWith(isLoading: true, failure: null);
    final result = await getRemoteTasks();
    bool success = false;
    await result.fold(
      (failure) async {
        state = state.copyWith(isLoading: false, failure: failure);
        success = false;
      },
      (tasks) async {
        await addTasksBulk(tasks);
        state = state.copyWith(isLoading: false);
        success = true;
      },
    );
    return success;
  }

  Future<void> fetchLocalTasks() async {
    state = state.copyWith(isLoading: true, failure: null);
    final localResult = await getLocalTasks();
    await localResult.fold(
      (failure) async {
        state = state.copyWith(isLoading: false, failure: failure);
      },
      (localTasks) async {
        state = state.copyWith(isLoading: false, tasks: localTasks);
        return;
      },
    );
  }

  Future<void> addTask(TaskEntity task) async {
    state = state.copyWith(isLoading: true, failure: null);
    final result = await createLocalTask(task);
    result.fold(
      (failure) => state = state.copyWith(isLoading: false, failure: failure),
      (_) => fetchLocalTasks(),
    );
  }

  Future<void> deleteTask(String id) async {
    state = state.copyWith(isLoading: true, failure: null);
    final result = await deleteLocalTask(id);
    result.fold(
      (failure) => state = state.copyWith(isLoading: false, failure: failure),
      (_) => fetchLocalTasks(),
    );
  }

  Future<void> clearAllTasks() async {
    state = state.copyWith(isLoading: true, failure: null);
    final result = await clearLocal();
    result.fold(
      (failure) => state = state.copyWith(isLoading: false, failure: failure),
      (_) => fetchLocalTasks(),
    );
  }

  Future<void> addTaskItem(String taskId, TaskItemEntity item) async {
    state = state.copyWith(isLoading: true, failure: null);
    final result = await addLocalTaskItem(taskId, item);
    result.fold(
      (failure) => state = state.copyWith(isLoading: false, failure: failure),
      (_) => fetchLocalTasks(),
    );
  }

  Future<void> removeTaskItem(String taskId, int index) async {
    state = state.copyWith(isLoading: true, failure: null);
    final result = await removeLocalTaskItem(taskId, index);
    result.fold(
      (failure) => state = state.copyWith(isLoading: false, failure: failure),
      (_) => fetchLocalTasks(),
    );
  }

  Future<void> reorderTaskItems(
    String taskId,
    int oldIndex,
    int newIndex,
  ) async {
    state = state.copyWith(isLoading: true, failure: null);
    final result = await reorderLocalTaskItems(taskId, oldIndex, newIndex);
    result.fold(
      (failure) => state = state.copyWith(isLoading: false, failure: failure),
      (_) => fetchLocalTasks(),
    );
  }

  Future<void> toggleTaskCompletion(String id, bool isCompleted) async {
    state = state.copyWith(isLoading: true, failure: null);
    final result = await toggleLocalTaskCompletion(id, isCompleted);
    result.fold(
      (failure) => state = state.copyWith(isLoading: false, failure: failure),
      (_) => fetchLocalTasks(),
    );
  }

  Future<void> updateTask(
    String id, {
    String? title,
    bool? isCompleted,
    List<TaskItemEntity>? items,
  }) async {
    state = state.copyWith(isLoading: true, failure: null);
    final result = await updateLocalTask(
      id,
      title: title,
      isCompleted: isCompleted,
      items: items,
    );
    result.fold(
      (failure) => state = state.copyWith(isLoading: false, failure: failure),
      (_) => fetchLocalTasks(),
    );
  }

  Future<void> updateTaskItem(
    String taskId,
    int index,
    TaskItemEntity item,
  ) async {
    state = state.copyWith(isLoading: true, failure: null);
    final result = await updateLocalTaskItem(taskId, index, item);
    result.fold(
      (failure) => state = state.copyWith(isLoading: false, failure: failure),
      (_) => fetchLocalTasks(),
    );
  }

  Future<void> addTasksBulk(List<TaskEntity> tasks) async {
    state = state.copyWith(isLoading: true, failure: null);
    final result = await addTasks(tasks);
    result.fold(
      (failure) => state = state.copyWith(isLoading: false, failure: failure),
      (_) => fetchLocalTasks(),
    );
  }
}

final taskProvider = StateNotifierProvider<TaskNotifier, TaskState>((ref) {
  return TaskNotifier(
    getRemoteTasks: GetRemoteTasks(getIt()),
    getLocalTasks: GetLocalTasks(getIt()),
    getLocalTaskById: GetLocalTaskById(getIt()),
    createLocalTask: CreateLocalTask(getIt()),
    deleteLocalTask: DeleteLocalTask(getIt()),
    clearLocal: ClearLocal(getIt()),
    addLocalTaskItem: AddLocalTaskItem(getIt()),
    removeLocalTaskItem: RemoveLocalTaskItem(getIt()),
    reorderLocalTaskItems: ReorderLocalTaskItems(getIt()),
    toggleLocalTaskCompletion: ToggleLocalTaskCompletion(getIt()),
    updateLocalTask: UpdateLocalTask(getIt()),
    updateLocalTaskItem: UpdateLocalTaskItem(getIt()),
    addTasks: AddTasks(getIt()),
  );
});
