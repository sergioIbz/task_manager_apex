import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../domain/entities/task_entity.dart';
import '../providers/task_filter_provider.dart';



class ListTaskElements extends ConsumerWidget {
  final List<TaskEntity> tasks;
  const ListTaskElements(this.tasks, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = ref.watch(taskFilterProvider);
    final filteredTasks = switch (filter) {
      TaskFilter.all => tasks,
      TaskFilter.completed => tasks.where((t) => t.isCompleted).toList(),
      TaskFilter.pending => tasks.where((t) => !t.isCompleted).toList(),
    };

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
          child: Row(
            children: [
              Expanded(
                child: SegmentedButton<TaskFilter>(
                  segments: const [
                    ButtonSegment(
                      value: TaskFilter.all,
                      label: FittedBox(child: Text('Todas')),
                      icon: Icon(Icons.all_inbox_outlined),
                    ),
                    ButtonSegment(
                      value: TaskFilter.completed,
                      label: FittedBox(child: Text('Completas')),
                      icon: Icon(Icons.check_circle),
                    ),
                    ButtonSegment(
                      value: TaskFilter.pending,
                      label: FittedBox(child: Text('Incompleta')),
                      icon: Icon(Icons.radio_button_unchecked),
                    ),
                  ],
                  selected: {filter},
                  showSelectedIcon: false,
                  style: ButtonStyle(
                    visualDensity: VisualDensity.compact,
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                  onSelectionChanged: (selection) =>
                      ref.read(taskFilterProvider.notifier).state = selection.first,
                ),
              ),
            ],
          ),
        ),
        const Divider(height: 0),
        Expanded(
          child: ListView.builder(
            itemCount: filteredTasks.length,
            itemBuilder: (context, index) {
              final task = filteredTasks[index];
              return ListTile(
                onTap: () => context.push('/edit-task', extra: task),
                title: Text(task.title),
                subtitle: TaskProgressBar(task: task, height: 10),
                trailing: Icon(
                  task.isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
                  color: task.isCompleted ? Colors.green : Colors.grey,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}


class TaskProgressBar extends StatelessWidget {
  final TaskEntity task;
  final double height;
  const TaskProgressBar({super.key, required this.task, this.height = 8});

  @override
  Widget build(BuildContext context) {
    final total = task.items.length;
    final completed = task.items.where((e) => e.isCompleted).length;
    final value = task.isCompleted ? 1.0 : (total == 0 ? 0.0 : completed / total);
    return Row(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(height / 2),
            child: LinearProgressIndicator(
              value: value,
              minHeight: height,
              backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.greenAccent),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          '$completed/$total',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
