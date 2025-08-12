
import 'package:get_it/get_it.dart';

import '../../features/countries/data/datasources/countries_datasource_impl.dart';
import '../../features/countries/data/repositories/countries_repository_impl.dart';
import '../../features/countries/domain/datasources/countries_datasource.dart';
import '../../features/countries/domain/repositories/countries_repository.dart';
import '../../features/task/data/datasources/hive_local_task_data_source.dart';
import '../../features/task/data/datasources/remote_task_datasource.dart';
import '../../features/task/data/repositories/task_repository_impl.dart';
import '../../features/task/domain/datasources/remote_task_data_source.dart';
import '../../features/task/domain/repositories/tastk_repository.dart';
import '../network/graph_client.dart';
import '../network/rest_client.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //! Rest client
  getIt.registerLazySingleton<RestClient>(
    () => RestClient(baseUrl: 'https://jsonplaceholder.typicode.com/todos'),
  );
  //! Graph client
  getIt.registerLazySingleton<GraphClient>(
    () => GraphClient(baseUrl: 'https://countries.trevorblades.com/'),
  );

  //! Local datasource
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

  //! countries datasource and repository
  getIt.registerLazySingleton<CountriesDataSource>(
    () => CountriesDatasourceImpl(graphClient: getIt<GraphClient>()),
  );
  getIt.registerLazySingleton<CountriesRepository>(
    () => CountriesRepositoryImpl(
      countriesDataSource: getIt<CountriesDataSource>(),
    ),
  );
}
