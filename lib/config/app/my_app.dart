import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_manager_apex/features/task/domain/entities/task_entity.dart';
import 'package:task_manager_apex/features/task/presentation/task_provider.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
      home: const TaskPage(),
    );
  }
}

class TaskPage extends ConsumerStatefulWidget {
  const TaskPage({super.key});
  @override
  ConsumerState<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends ConsumerState<TaskPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(taskProvider.notifier).fetchLocalTasks());
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(taskProvider);
    final notifier = ref.read(taskProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Tareas'),
        actions: [
          IconButton(icon: const Icon(Icons.refresh), onPressed: () => notifier.fetchLocalTasks()),
          IconButton(icon: const Icon(Icons.cloud_download), onPressed: () => notifier.fetchRemoteTasks()),
          IconButton(icon: const Icon(Icons.delete_sweep), onPressed: () => notifier.clearAllTasks()),
        ],
      ),
      body: Stack(
        children: [
          if (state.failure != null)
            Center(child: Text('Error: ${state.failure!.message}')),
          if (state.failure == null && state.tasks.isEmpty && !state.isLoading)
            const _EmptyView(),
          if (state.failure == null && state.tasks.isNotEmpty)
            RefreshIndicator(
              onRefresh: () => notifier.fetchLocalTasks(),
              child: ListView.separated(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 100),
                itemCount: state.tasks.length,
                separatorBuilder: (_, __) => const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  final task = state.tasks[index];
                  return Dismissible(
                    key: ValueKey(task.id),
                    background: Container(
                      decoration: BoxDecoration(color: Colors.red.withOpacity(.1), borderRadius: BorderRadius.circular(16)),
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Icon(Icons.delete, color: Colors.red),
                    ),
                    secondaryBackground: Container(
                      decoration: BoxDecoration(color: Colors.red.withOpacity(.1), borderRadius: BorderRadius.circular(16)),
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Icon(Icons.delete, color: Colors.red),
                    ),
                    confirmDismiss: (_) async {
                      await notifier.deleteTask(task.id);
                      return true;
                    },
                    child: TaskCard(
                      task: task,
                      onToggle: (v) => notifier.toggleTaskCompletion(task.id, v),
                      onRename: () async {
                        final title = await _showTextDialog(context, 'Renombrar tarea', initial: task.title);
                        if (title != null && title.trim().isNotEmpty) {
                          await notifier.updateTask(task.id, title: title.trim());
                        }
                      },
                      onAddItem: () async {
                        final text = await _showTextDialog(context, 'Nuevo ítem');
                        if (text != null && text.trim().isNotEmpty) {
                          await notifier.addTaskItem(task.id, TaskItemEntity(title: text.trim(), isCompleted: false));
                        }
                      },
                      onReorderItems: (oldIndex, newIndex) => notifier.reorderTaskItems(task.id, oldIndex, newIndex),
                      onToggleItem: (i, v) async {
                        final item = task.items[i];
                        await notifier.updateTaskItem(task.id, i, item.copyWith(isCompleted: v));
                      },
                      onEditItem: (i) async {
                        final item = task.items[i];
                        final text = await _showTextDialog(context, 'Editar ítem', initial: item.title);
                        if (text != null && text.trim().isNotEmpty) {
                          await notifier.updateTaskItem(task.id, i, item.copyWith(title: text.trim()));
                        }
                      },
                      onDeleteItem: (i) => notifier.removeTaskItem(task.id, i),
                    ),
                  );
                },
              ),
            ),
          if (state.isLoading) const _LoadingOverlay(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.add),
        label: const Text('Nueva tarea'),
        onPressed: () async {
          final title = await _showTextDialog(context, 'Crear tarea');
          if (title != null && title.trim().isNotEmpty) {
            final t = TaskEntity(
              id: DateTime.now().microsecondsSinceEpoch.toString(),
              title: title.trim(),
              isCompleted: false,
              items: const [],
            );
            await notifier.addTask(t);
          }
        },
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final TaskEntity task;
  final ValueChanged<bool> onToggle;
  final VoidCallback onRename;
  final VoidCallback onAddItem;
  final void Function(int oldIndex, int newIndex) onReorderItems;
  final void Function(int index, bool value) onToggleItem;
  final void Function(int index) onEditItem;
  final void Function(int index) onDeleteItem;

  const TaskCard({
    super.key,
    required this.task,
    required this.onToggle,
    required this.onRename,
    required this.onAddItem,
    required this.onReorderItems,
    required this.onToggleItem,
    required this.onEditItem,
    required this.onDeleteItem,
  });

  @override
  Widget build(BuildContext context) {
    final completed = task.items.where((e) => e.isCompleted).length;
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16), side: BorderSide(color: Theme.of(context).dividerColor)),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 6),
          title: Row(
            children: [
              _CheckCircle(checked: task.isCompleted, onChanged: onToggle),
              const SizedBox(width: 10),
              Expanded(child: Text(task.title, style: Theme.of(context).textTheme.titleMedium)),
              const SizedBox(width: 10),
              _StatusChip(label: '$completed/${task.items.length}', color: task.isCompleted ? Colors.green : Colors.grey),
              const SizedBox(width: 6),
              _IconButtonTonal(icon: Icons.edit, onPressed: onRename),
            ],
          ),
          children: [
            if (task.items.isEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Center(child: Text('Sin ítems', style: Theme.of(context).textTheme.bodyMedium)),
              ),
            if (task.items.isNotEmpty)
              _ReorderableItems(
                items: task.items,
                onReorder: onReorderItems,
                onToggle: onToggleItem,
                onEdit: onEditItem,
                onDelete: onDeleteItem,
              ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 6, 12, 12),
                child: _FilledTonalButton(icon: Icons.add, label: 'Agregar ítem', onPressed: onAddItem),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ReorderableItems extends StatelessWidget {
  final List<TaskItemEntity> items;
  final void Function(int oldIndex, int newIndex) onReorder;
  final void Function(int index, bool value) onToggle;
  final void Function(int index) onEdit;
  final void Function(int index) onDelete;

  const _ReorderableItems({
    required this.items,
    required this.onReorder,
    required this.onToggle,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ReorderableListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      onReorder: (oldIndex, newIndex) {
        if (newIndex > oldIndex) newIndex -= 1;
        onReorder(oldIndex, newIndex);
      },
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          key: ValueKey('${item.title}-$index'),
          dense: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          leading: _CheckBoxSquare(checked: item.isCompleted, onChanged: (v) => onToggle(index, v)),
          title: Text(
            item.title,
            style: item.isCompleted
                ? Theme.of(context).textTheme.bodyLarge?.copyWith(decoration: TextDecoration.lineThrough, color: Colors.grey)
                : Theme.of(context).textTheme.bodyLarge,
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _IconButtonTonal(icon: Icons.edit, onPressed: () => onEdit(index)),
              const SizedBox(width: 6),
              _IconButtonTonal(icon: Icons.delete, onPressed: () => onDelete(index)),
              const SizedBox(width: 6),
              const Icon(Icons.drag_handle, color: Colors.grey),
            ],
          ),
        );
      },
    );
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Icon(Icons.inbox_outlined, size: 64, color: Theme.of(context).colorScheme.primary),
        const SizedBox(height: 12),
        Text('No hay tareas', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 4),
        Text('Crea tu primera tarea con el botón +', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey)),
      ]),
    );
  }
}

class _LoadingOverlay extends StatelessWidget {
  const _LoadingOverlay();
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        color: Colors.black12,
        child: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class _CheckCircle extends StatelessWidget {
  final bool checked;
  final ValueChanged<bool> onChanged;
  const _CheckCircle({required this.checked, required this.onChanged});
  @override
  Widget build(BuildContext context) {
    final color = checked ? Colors.green : Colors.grey;
    return InkResponse(
      onTap: () => onChanged(!checked),
      borderRadius: BorderRadius.circular(20),
      child: Icon(checked ? Icons.check_circle : Icons.circle_outlined, color: color, size: 26),
    );
  }
}

class _CheckBoxSquare extends StatelessWidget {
  final bool checked;
  final ValueChanged<bool> onChanged;
  const _CheckBoxSquare({required this.checked, required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () => onChanged(!checked),
      borderRadius: BorderRadius.circular(8),
      child: Icon(checked ? Icons.check_box : Icons.check_box_outline_blank, color: checked ? Colors.green : Colors.grey),
    );
  }
}

class _IconButtonTonal extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const _IconButtonTonal({required this.icon, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      style: IconButton.styleFrom(padding: const EdgeInsets.all(8), visualDensity: VisualDensity.compact),
      icon: Icon(icon, size: 18),
      onPressed: onPressed,
    );
  }
}

class _StatusChip extends StatelessWidget {
  final String label;
  final Color color;
  const _StatusChip({required this.label, required this.color});
  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      visualDensity: VisualDensity.compact,
      side: BorderSide(color: color.withOpacity(.3)),
      backgroundColor: color.withOpacity(.08),
      labelStyle: TextStyle(color: color, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}

class _FilledTonalButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  const _FilledTonalButton({required this.icon, required this.label, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return FilledButton.tonalIcon(onPressed: onPressed, icon: Icon(icon), label: Text(label));
  }
}

Future<String?> _showTextDialog(BuildContext context, String title, {String? initial}) async {
  final controller = TextEditingController(text: initial);
  return showDialog<String>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(title),
        content: TextField(
          controller: controller,
          autofocus: true,
          decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'Título'),
          textInputAction: TextInputAction.done,
          onSubmitted: (v) => Navigator.of(context).pop(v),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: () => Navigator.of(context).pop(controller.text), child: const Text('Aceptar')),
        ],
      );
    },
  );
}
