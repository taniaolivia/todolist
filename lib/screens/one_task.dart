import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/components/tasks/task_details.dart';
import 'package:todolist/components/tasks/task_form.dart';
import 'package:todolist/components/tasks/task_master.dart';
import 'package:todolist/data/tasks_collection.dart';
import 'package:todolist/models/task.dart';
import '../models/task.dart';

class OneTask extends StatefulWidget {
  @override
  _OneTask createState() {
    // TODO: implement createState
    return _OneTask();
  }
}

class _OneTask extends State<OneTask> {
  @override
  Widget build(BuildContext context) {
    final task = ModalRoute.of(context)!.settings.arguments as Task;
    return Scaffold(
      appBar: AppBar(
          title: Text("Update Task",
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
                    TaskForm(task: task, updateForm: true))
          ])),
    );
  }
}
