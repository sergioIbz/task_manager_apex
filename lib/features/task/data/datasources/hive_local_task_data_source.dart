import 'package:hive/hive.dart';

import '../../domain/datasources/local_task_data_source.dart';
import '../../domain/entities/task_entity.dart';

class HiveLocalTaskDataSource implements LocalTaskDataSource {
  final Box<Map> _box;
  HiveLocalTaskDataSource(this._box);

  static Future<HiveLocalTaskDataSource> create({String boxName = 'tasks_box'}) async {
    final box = Hive.isBoxOpen(boxName) ? Hive.box<Map>(boxName) : await Hive.openBox<Map>(boxName);
    return HiveLocalTaskDataSource(box);
  }

  Map<String, dynamic> _toHiveMap(TaskEntity task) {
    final map = Map<String, dynamic>.from(task.toJson());
    if (map['items'] is List) {
      map['items'] = (map['items'] as List).map((e) {
        if (e is TaskItemEntity) return Map<String, dynamic>.from(e.toJson());
        if (e is Map) return Map<String, dynamic>.from(e as Map);
        return e;
      }).toList();
    }
    return map;
  }

  @override
  Future<List<TaskEntity>> getTasks() async {
    return _box.values.map((m) => TaskEntity.fromJson(Map<String, dynamic>.from(m))).toList();
  }

  @override
  Future<TaskEntity?> getTaskById(String id) async {
    final raw = _box.get(id);
    if (raw == null) return null;
    return TaskEntity.fromJson(Map<String, dynamic>.from(raw));
  }

  @override
  Future<TaskEntity> createTask(TaskEntity task) async {
    await _box.put(task.id, _toHiveMap(task));
    return task;
  }

  @override
  Future<TaskEntity> updateTask(
    String id, {
    String? title,
    bool? isCompleted,
    List<TaskItemEntity>? items,
  }) async {
    final current = await getTaskById(id);
    if (current == null) {
      throw StateError('Task not found');
    }
    final updated = current.copyWith(
      title: title ?? current.title,
      isCompleted: isCompleted ?? current.isCompleted,
      items: items ?? current.items,
    );
    await _box.put(id, _toHiveMap(updated));
    return updated;
  }

  @override
  Future<void> deleteTask(String id) async {
    await _box.delete(id);
  }

  @override
  Future<TaskEntity> toggleTaskCompletion(String id, bool isCompleted) {
    return updateTask(id, isCompleted: isCompleted);
  }

  @override
  Future<TaskEntity> addTaskItem(String taskId, TaskItemEntity item) async {
    final current = await getTaskById(taskId);
    if (current == null) {
      throw StateError('Task not found');
    }
    final updated = current.copyWith(items: [...current.items, item]);
    await _box.put(taskId, _toHiveMap(updated));
    return updated;
  }

  @override
  Future<TaskEntity> updateTaskItem(String taskId, int index, TaskItemEntity item) async {
    final current = await getTaskById(taskId);
    if (current == null) {
      throw StateError('Task not found');
    }
    if (index < 0 || index >= current.items.length) {
      throw RangeError.index(index, current.items);
    }
    final newItems = [...current.items]..[index] = item;
    final updated = current.copyWith(items: newItems);
    await _box.put(taskId, _toHiveMap(updated));
    return updated;
  }

  @override
  Future<TaskEntity> removeTaskItem(String taskId, int index) async {
    final current = await getTaskById(taskId);
    if (current == null) {
      throw StateError('Task not found');
    }
    if (index < 0 || index >= current.items.length) {
      throw RangeError.index(index, current.items);
    }
    final newItems = [...current.items]..removeAt(index);
    final updated = current.copyWith(items: newItems);
    await _box.put(taskId, _toHiveMap(updated));
    return updated;
  }

  @override
  Future<TaskEntity> reorderTaskItems(String taskId, int oldIndex, int newIndex) async {
    final current = await getTaskById(taskId);
    if (current == null) {
      throw StateError('Task not found');
    }
    if (oldIndex < 0 || oldIndex >= current.items.length) {
      throw RangeError.index(oldIndex, current.items);
    }
    if (newIndex < 0 || newIndex > current.items.length) {
      throw RangeError.index(newIndex, current.items);
    }
    final newItems = [...current.items];
    final item = newItems.removeAt(oldIndex);
    final target = oldIndex < newIndex ? newIndex - 1 : newIndex;
    newItems.insert(target, item);
    final updated = current.copyWith(items: newItems);
    await _box.put(taskId, _toHiveMap(updated));
    return updated;
  }

  @override
  Future<void> clear() async {
    await _box.clear();
  }

  @override
  Future<void> addTasks(List<TaskEntity> tasks) async {
    for (final task in tasks) {
      await _box.put(task.id, _toHiveMap(task));
    }
  }
}
