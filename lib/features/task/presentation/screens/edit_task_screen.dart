import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:task_manager_apex/features/task/presentation/providers/task_provider.dart';
import '../../domain/entities/task_entity.dart';

class EditTaskScreen extends ConsumerStatefulWidget {
  final TaskEntity task;
  const EditTaskScreen({super.key, required this.task});

  @override
  ConsumerState<EditTaskScreen> createState() => _EditTaskScreenState();
}

class _EditTaskScreenState extends ConsumerState<EditTaskScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late final TextEditingController titleController;
  final List<TextEditingController> subtaskControllers = [];
  final List<bool> subtaskCompletionFlags = [];
  bool taskIsCompleted = false;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.task.title);
    taskIsCompleted = widget.task.isCompleted;
    for (final item in widget.task.items) {
      subtaskControllers.add(TextEditingController(text: item.title));
      subtaskCompletionFlags.add(item.isCompleted);
    }
  }

  @override
  void dispose() {
    titleController.dispose();
    for (final controller in subtaskControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void addSubtask() {
    setState(() {
      subtaskControllers.add(TextEditingController());
      subtaskCompletionFlags.add(false);
    });
  }

  void removeSubtask(int index) {
    setState(() {
      subtaskControllers[index].dispose();
      subtaskControllers.removeAt(index);
      subtaskCompletionFlags.removeAt(index);
    });
  }

  Future<void> saveEdits() async {
    if (!formKey.currentState!.validate()) return;
    final hasEmptySubtask = subtaskControllers.any(
      (controller) => controller.text.trim().isEmpty,
    );
    if (hasEmptySubtask) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Todas las subtareas deben tener un título'),
        ),
      );
      return;
    }
    final updatedItems = <TaskItemEntity>[];
    for (int i = 0; i < subtaskControllers.length; i++) {
      updatedItems.add(
        TaskItemEntity(
          title: subtaskControllers[i].text.trim(),
          isCompleted: subtaskCompletionFlags[i],
        ),
      );
    }
    final updatedTask = TaskEntity(
      id: widget.task.id,
      title: titleController.text.trim(),
      isCompleted: taskIsCompleted,
      items: updatedItems,
    );
    await ref
        .read(taskProvider.notifier)
        .updateTask(
          updatedTask.id,
          title: updatedTask.title,
          isCompleted: updatedTask.isCompleted,
          items: updatedTask.items,
        );
    if (mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final safeAreaBottomPadding = MediaQuery.of(context).padding.bottom;
    final bottomInset = safeAreaBottomPadding > 0
        ? safeAreaBottomPadding
        : 20.0;
    final taskState = ref.watch(taskProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar tarea'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            onPressed: () async {
              final confirmed = await showDialog<bool>(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Confirmar eliminación'),
                  content: const Text(
                    '¿Estás seguro de que quieres eliminar esta tarea?',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => context.pop(false),
                      child: const Text('Cancelar'),
                    ),
                    TextButton(
                      onPressed: () => context.pop(true),
                      child: const Text('Eliminar'),
                    ),
                  ],
                ),
              );
              if (confirmed == true) {
                await ref
                    .read(taskProvider.notifier)
                    .deleteTask(widget.task.id);
                if (taskState.failure == null && context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Tarea eliminada')),
                  );
                  if (context.mounted) context.pop();
                  return;
                }
                if (taskState.failure != null && context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Error al eliminar la tarea')),
                  );
                }
              }
            },
          ),
        ],
      ),
      body: AbsorbPointer(
        absorbing: taskState.isLoading,
        child: Form(
          key: formKey,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              TextFormField(
                controller: titleController,
                decoration: const InputDecoration(
                  labelText: 'Título',
                  border: OutlineInputBorder(),
                ),
                textInputAction: TextInputAction.done,
                validator: (value) => (value == null || value.trim().isEmpty)
                    ? 'El título es obligatorio'
                    : null,
              ),
              const SizedBox(height: 12),
              SwitchListTile.adaptive(
                title: const Text('Marcar como completada'),
                value: taskIsCompleted,
                onChanged: (value) => setState(() => taskIsCompleted = value),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Text(
                    'Subtareas',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  FilledButton.icon(
                    onPressed: addSubtask,
                    icon: const Icon(Icons.add),
                    label: const Text('Agregar'),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Column(
                children: List.generate(subtaskControllers.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      children: [
                        Checkbox(
                          value: subtaskCompletionFlags[index],
                          onChanged: (value) => setState(
                            () =>
                                subtaskCompletionFlags[index] = value ?? false,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            controller: subtaskControllers[index],
                            decoration: const InputDecoration(
                              hintText: 'Título de la subtarea',
                              border: OutlineInputBorder(),
                              isDense: true,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () => removeSubtask(index),
                          icon: const Icon(Icons.close),
                        ),
                      ],
                    ),
                  );
                }),
              ),
              const SizedBox(height: 24),
              if (taskState.failure != null)
                Text(
                  taskState.failure!.message,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ).copyWith(bottom: bottomInset),
        child: FilledButton.icon(
          onPressed: taskState.isLoading ? null : saveEdits,
          icon: const Icon(Icons.save),
          label: const Text('Guardar cambios'),
        ),
      ),
    );
  }
}
