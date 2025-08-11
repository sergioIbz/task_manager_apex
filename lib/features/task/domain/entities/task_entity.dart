import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_entity.freezed.dart';
part 'task_entity.g.dart';

@freezed
abstract class TaskEntity with _$TaskEntity {
  const factory TaskEntity({
    required String id,
    required String title,
    @Default(false) bool isCompleted,
    @Default([]) List<TaskItemEntity> items,
  }) = _TaskEntity;

  factory TaskEntity.fromJson(Map<String, dynamic> json) => _$TaskEntityFromJson(json);
}

@freezed
abstract class TaskItemEntity with _$TaskItemEntity {
  const factory TaskItemEntity({
    required String title,
    @Default(false) bool isCompleted,
  }) = _TaskItemEntity;

  factory TaskItemEntity.fromJson(Map<String, dynamic> json) => _$TaskItemEntityFromJson(json);
}
