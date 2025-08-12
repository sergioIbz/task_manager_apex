import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../providers/task_provider.dart';
import '../widgets/list_task_elements.dart';
import '../widgets/task_error_widget.dart';

class TasksScreen extends ConsumerStatefulWidget {
  const TasksScreen({super.key});

  @override
  ConsumerState<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends ConsumerState<TasksScreen> {
  @override
  void initState() {
    Future.microtask(() async{
     await ref.read(taskProvider.notifier).fetchRemoteTasksOnce();
     await ref.read(taskProvider.notifier).fetchLocalTasks();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final taskState = ref.watch(taskProvider);

    final widgetResponse = switch (taskState) {
      TaskState(isLoading: true, failure: null, tasks: _) => Center(
        child: CircularProgressIndicator(),
      ),
      TaskState(isLoading: false, failure: null, tasks: final tasks) =>
        ListTaskElements(tasks),
      TaskState(isLoading: false, failure: final failure, tasks: _) =>
        TaskErrorWidget(error: failure!.message),
      _ => TaskErrorWidget(error: 'Errorr desconocido'),
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Tareas'),
        actions: [
          IconButton(
            icon: Icon(Icons.public),
            onPressed: () {
              context.push('/countries');
            },
          ),
        ],
      ),
      body: widgetResponse,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push('/add-task');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
