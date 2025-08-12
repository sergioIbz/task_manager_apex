import '../../../../config/network/rest_client.dart';
import '../../domain/datasources/remote_task_data_source.dart';
import '../models/remote_task/remote_task_model.dart';


class RemoteTaskDatasourceImpl implements RemoteTaskDatasource {
  final RestClient restClient;
  RemoteTaskDatasourceImpl({required this.restClient});
  @override
  Future<List<RemoteTask>> getTasks() async {
    final response = await restClient.get('');
    final list = response.data as List;
    return list.map((e) => RemoteTask.fromJson(e)).toList();
  }
}
