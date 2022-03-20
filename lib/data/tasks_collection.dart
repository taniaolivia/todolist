import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';
import 'package:todolist/data/tasks.dart' as data;

class TasksCollection extends ChangeNotifier {
  final List<Task> _tasks = data.tasks;
  final DateTime now = DateTime.now();

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  void addTask(content) {
    var task = new Task(
        id: _tasks.length + 1,
        content: content,
        completed: false,
        createdAt: now);
    _tasks.add(task);

    notifyListeners();
  }

  void updateTask(task, newContent, newCompleted) {
    task.content = newContent.text;
    task.completed = newCompleted;
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);

    notifyListeners();
  }
}
