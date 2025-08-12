import '../../data/models/remote_task/remote_task_model.dart';

abstract class RemoteTaskDatasource {
  Future<List<RemoteTask>> getTasks();
}
