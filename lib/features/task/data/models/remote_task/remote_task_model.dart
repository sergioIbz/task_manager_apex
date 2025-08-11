import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_task_model.freezed.dart';
part 'remote_task_model.g.dart';

@freezed
abstract class RemoteTask with _$RemoteTask {
  const factory RemoteTask({
    required int userId,
    required int id,
    required String title,
    required bool completed,
  }) = _RemoteTask;

  factory RemoteTask.fromJson(Map<String, dynamic> json) =>
      _$RemoteTaskFromJson(json);
}

