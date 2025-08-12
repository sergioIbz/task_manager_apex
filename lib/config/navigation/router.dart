import 'package:go_router/go_router.dart';

import '../../features/countries/presentation/screens/countries_screen.dart';
import '../../features/countries/presentation/screens/country_info.dart';
import '../../features/task/domain/entities/task_entity.dart';
import '../../features/task/presentation/screens/add_task_scree.dart';
import '../../features/task/presentation/screens/edit_task_screen.dart';
import '../../features/task/presentation/screens/tasks_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => TasksScreen()),

    GoRoute(path: '/add-task', builder: (context, state) => AddTaskScreen()),
    GoRoute(
      path: '/edit-task',
      builder: (context, state) {
        final task = state.extra as TaskEntity;
        return EditTaskScreen(task: task);
      },
    ),

    GoRoute(path: '/countries', builder: (context, state) => CountriesScreen()),
    GoRoute(
      path: '/country',
      builder: (context, state) {
        final code = state.extra as String;
        return CountryInfo(code);
      },
    ),
  ],
);
