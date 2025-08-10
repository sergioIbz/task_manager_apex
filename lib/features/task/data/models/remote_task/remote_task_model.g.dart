// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoteTask _$RemoteTaskFromJson(Map<String, dynamic> json) => _RemoteTask(
  userId: (json['userId'] as num).toInt(),
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  completed: json['completed'] as bool,
);

Map<String, dynamic> _$RemoteTaskToJson(_RemoteTask instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'completed': instance.completed,
    };
