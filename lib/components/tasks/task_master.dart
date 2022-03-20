import 'package:flutter/material.dart';
import 'package:todolist/components/tasks/task_preview.dart';
import 'package:todolist/models/task.dart';

class TaskMaster extends StatelessWidget {
  final List<Task> tasks;
  final Function showDetails;

  const TaskMaster({Key? key, required this.tasks, required this.showDetails})
      : super(key: key);

  void selectedTask(Task task) {
    showDetails(task);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskPreview(task: tasks[index], selectedTask: selectedTask);
        },
      ),
    );
  }
}
