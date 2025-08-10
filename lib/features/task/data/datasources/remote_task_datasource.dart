import 'package:task_manager_apex/config/network/rest_client.dart';
import 'package:task_manager_apex/features/task/data/models/remote_task/remote_task_model.dart';

abstract class RemoteTaskDatasource {
  Future<List<RemoteTask>> fetchTasks();
}

class RemoteTaskDatasourceImpl implements RemoteTaskDatasource {
  final RestClient restClient;
  RemoteTaskDatasourceImpl({required this.restClient});
  @override
Future<List<RemoteTask>> fetchTasks() async {
  final response = await restClient.get('');
  final list = response.data as List;
  return list.map((e) => RemoteTask.fromJson(e)).toList();
}

}
