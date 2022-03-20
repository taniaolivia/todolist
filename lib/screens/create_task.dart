import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/components/tasks/task_form.dart';
import 'package:todolist/data/tasks_collection.dart';

class CreateTask extends StatefulWidget {
  @override
  _CreateTask createState() {
    // TODO: implement createState
    return _CreateTask();
  }
}

class _CreateTask extends State<CreateTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Create Task",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.cyan.shade400),
      backgroundColor: Colors.cyan.shade50,
      body: Align(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
            Consumer<TasksCollection>(
              builder: (context, tasks, child) =>
                  TaskForm(task: tasks.tasks[0], updateForm: false),
            )
          ])),
    );
  }
}
