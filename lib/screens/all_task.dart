import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/components/tasks/task_details.dart';
import 'package:todolist/components/tasks/task_form.dart';
import 'package:todolist/components/tasks/task_master.dart';
import 'package:todolist/data/tasks_collection.dart';
import 'package:todolist/models/task.dart';
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

  void closeDetails() {
    setState(() {
      selectedTask = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("All Tasks",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            backgroundColor: Colors.cyan.shade400),
        backgroundColor: Colors.cyan.shade50,
        body: Align(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              (selectedTask != null)
                  ? TaskDetails(task: selectedTask, close: closeDetails)
                  : Container(),
              Consumer<TasksCollection>(
                builder: (context, tasks, child) =>
                    TaskMaster(tasks: tasks.tasks, showDetails: showDetails),
              )
            ])),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => {Navigator.pushNamed(context, '/create_task')}));
  }
}
