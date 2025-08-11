// lib/config/di/dependency_injection.dart
import 'package:get_it/get_it.dart';
import 'package:task_manager_apex/config/network/rest_client.dart';
import 'package:task_manager_apex/features/task/data/datasources/hive_local_task_data_source.dart';
import 'package:task_manager_apex/features/task/data/datasources/remote_task_datasource.dart';
import 'package:task_manager_apex/features/task/data/repositories/task_repository_impl.dart';
import 'package:task_manager_apex/features/task/domain/datasources/remote_task_data_source.dart';

import 'package:task_manager_apex/features/task/domain/repositories/tastk_repository.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //! Rest client
  getIt.registerLazySingleton<RestClient>(
    () => RestClient(baseUrl: 'https://jsonplaceholder.typicode.com/todos'),
  );

  //! Local datasource (ASYNC)
  getIt.registerSingletonAsync<HiveLocalTaskDataSource>(
    () => HiveLocalTaskDataSource.create(boxName: 'tasks_box'),

  );

  //! Remote datasource
  getIt.registerLazySingleton<RemoteTaskDatasource>(
    () => RemoteTaskDatasourceImpl(restClient: getIt<RestClient>()),
  );

  //! Task repository (depende de un singleton ASYNC)

  getIt.registerSingletonAsync<TaskRepository>(() async {
    final local = await getIt.getAsync<HiveLocalTaskDataSource>();
    final remote = getIt<RemoteTaskDatasource>();
    return TaskRepositoryImpl(
      localTaskDataSource: local,
      remoteTaskDatasource: remote,
    );
  });
}
