import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/task_entity.dart';
import '../providers/task_provider.dart';

class AddTaskScreen extends ConsumerStatefulWidget {
  const AddTaskScreen({super.key});

  @override
  ConsumerState<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends ConsumerState<AddTaskScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController titleController = TextEditingController();
  final List<TextEditingController> subtaskControllers = [];
  final List<bool> subtaskCompletionFlags = [];
  bool taskIsCompleted = false;

  @override
  void dispose() {
    titleController.dispose();
    for (final TextEditingController controller in subtaskControllers) {
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

  void removeSubtask(int subtaskIndex) {
    setState(() {
      subtaskControllers[subtaskIndex].dispose();
      subtaskControllers.removeAt(subtaskIndex);
      subtaskCompletionFlags.removeAt(subtaskIndex);
    });
  }

  Future<void> saveTask() async {
    if (!formKey.currentState!.validate()) return;
    bool hasEmptySubtask = subtaskControllers.any(
      (controller) => controller.text.trim().isEmpty,
    );
    if (hasEmptySubtask) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Todas las subtareas deben tener un título')),
      );
      return;
    }
    final List<TaskItemEntity> taskItems = [];
    for (int itemIndex = 0; itemIndex < subtaskControllers.length; itemIndex++) {
      final String subtaskTitle = subtaskControllers[itemIndex].text.trim();
      taskItems.add(
        TaskItemEntity(
          title: subtaskTitle,
          isCompleted: subtaskCompletionFlags[itemIndex],
        ),
      );
    }
    final TaskEntity task = TaskEntity(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: titleController.text.trim(),
      isCompleted: taskIsCompleted,
      items: taskItems,
    );
    await ref.read(taskProvider.notifier).addTask(task);
    if (mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final bottom = (MediaQuery.of(context).padding.bottom) <= 0 ? MediaQuery.of(context).padding.bottom : 20.0;
    final TaskState state = ref.watch(taskProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear tarea'),
      ),
      body: AbsorbPointer(
        absorbing: state.isLoading,
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
                validator: (String? inputValue) =>
                    (inputValue == null || inputValue.trim().isEmpty)
                        ? 'El título es obligatorio'
                        : null,
              ),
              const SizedBox(height: 12),
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
                children: List.generate(subtaskControllers.length, (int itemIndex) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      children: [
                        Checkbox(
                          value: subtaskCompletionFlags[itemIndex],
                          onChanged: (bool? newValue) => setState(
                            () => subtaskCompletionFlags[itemIndex] = newValue ?? false,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            controller: subtaskControllers[itemIndex],
                            decoration: const InputDecoration(
                              hintText: 'Título de la subtarea',
                              border: OutlineInputBorder(),
                              isDense: true,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () => removeSubtask(itemIndex),
                          icon: const Icon(Icons.close),
                        ),
                      ],
                    ),
                  );
                }),
              ),
              const SizedBox(height: 24),
              if (state.failure != null)
                Text(
                  state.failure!.message,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: bottom),
        child: FilledButton.icon(
          onPressed: state.isLoading ? null : saveTask,
          icon: const Icon(Icons.save),
          label: const Text('Guardar'),
        ),
      ),
    );
  }
}
