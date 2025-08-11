// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TaskEntity _$TaskEntityFromJson(Map<String, dynamic> json) => _TaskEntity(
  id: json['id'] as String,
  title: json['title'] as String,
  isCompleted: json['isCompleted'] as bool? ?? false,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => TaskItemEntity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$TaskEntityToJson(_TaskEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'isCompleted': instance.isCompleted,
      'items': instance.items,
    };

_TaskItemEntity _$TaskItemEntityFromJson(Map<String, dynamic> json) =>
    _TaskItemEntity(
      title: json['title'] as String,
      isCompleted: json['isCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$TaskItemEntityToJson(_TaskItemEntity instance) =>
    <String, dynamic>{
      'title': instance.title,
      'isCompleted': instance.isCompleted,
    };
