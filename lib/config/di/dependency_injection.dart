import 'package:get_it/get_it.dart';
import 'package:task_manager_apex/config/network/rest_client.dart';

GetIt getIt = GetIt.instance;
Future<void> setupGetIt() async {
  //! rest client
  getIt.registerLazySingleton(
    () => RestClient(baseUrl: 'https://jsonplaceholder.typicode.com/todos'),
  );
}
