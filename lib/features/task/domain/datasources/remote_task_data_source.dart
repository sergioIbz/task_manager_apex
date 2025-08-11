import 'package:task_manager_apex/features/task/data/models/remote_task/remote_task_model.dart';

abstract class RemoteTaskDatasource {
  Future<List<RemoteTask>> getTasks();
}
