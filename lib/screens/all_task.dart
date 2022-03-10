import 'package:flutter/material.dart';
import 'package:todolist/components/tasks/task_details.dart';
import 'package:todolist/components/tasks/task_master.dart';
import 'package:todolist/data/tasks.dart' as data;
import 'package:todolist/models/task.dart';
import '../main.dart';
import 'package:faker/faker.dart';
import 'dart:math';
import '../models/task.dart';

class AllTasks extends StatefulWidget {
  final Function selectedTask;

  const AllTasks({Key? key, required this.selectedTask}) : super(key: key);

  @override
  _AllTasks createState() {
    // TODO: implement createState
    return _AllTasks();
  }
}

class _AllTasks extends State<AllTasks> {
  Task? selectedTask;
  void showDetails(Task task) {
    setState(() {
        selectedTask = task;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("All Tasks",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.cyan.shade400),
      body: Align(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                (selectedTask != null)
                  ? TaskDetails(task: selectedTask)
                  : Container(),
            TaskMaster(tasks: data.tasks, showDetails: showDetails),
          ])),
    );
  }
}
  /*Future<void> _displayDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add a new todo item',
              style: TextStyle(fontFamily: 'Knewave')),
          content: TextField(
            controller: _textFieldController,
            decoration: const InputDecoration(hintText: 'Type your new todo'),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Add'),
              onPressed: () {
                Navigator.of(context).pop();
                _addTodoItem(_textFieldController.text);
              },
            ),
          ],
        );
      },
    );
  }

  void _handleTodoChange(Todo todo) {
    setState(() {
      todo.checked = !todo.checked;
    });
  }

  void _addTodoItem(String name) {
    setState(() {
      _todos.add(Todo(name: name, checked: false));
    });
    _textFieldController.clear();
  }*/


