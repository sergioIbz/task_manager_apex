import 'package:uuid/uuid.dart';

import '../../domain/entities/task_entity.dart';
import '../models/remote_task/remote_task_model.dart';


class RemoteTaskMapper {
  static final Uuid _uuid = const Uuid();

  static TaskEntity toEntity(RemoteTask model) {
    return TaskEntity(
      id: _uuid.v4(),
      title: model.title,
      completed: model.completed,
      subTasks: const [],
    );
  }

  static List<TaskEntity> toEntityList(List<RemoteTask> models) {
    return models.map(toEntity).toList();
  }
}
