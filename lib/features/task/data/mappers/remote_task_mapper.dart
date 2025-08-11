import 'package:task_manager_apex/features/task/domain/entities/task_entity.dart';
import 'package:uuid/uuid.dart';

import '../models/remote_task/remote_task_model.dart';

class RemoteTaskMapper {
  static final Uuid _uuid = const Uuid();

  static TaskEntity toEntity(RemoteTask model) {
    return TaskEntity(
      id: _uuid.v4(),
      title: model.title,
      isCompleted: model.completed,
      items: const [],
    );
  }

  static List<TaskEntity> toEntityList(List<RemoteTask> models) {
    return models.map(toEntity).toList();
  }
}
