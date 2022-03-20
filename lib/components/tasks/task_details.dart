import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/data/tasks_collection.dart';
import 'package:todolist/models/task.dart';

class TaskDetails extends StatelessWidget {
  final Task? task;
  final Function close;

  const TaskDetails({Key? key, required this.task, required this.close})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget getIconCompleted() {
      if (task!.completed == true) {
        return Icon(Icons.check_circle_rounded, color: Colors.green);
      } else {
        return Icon(Icons.access_time_filled, color: Colors.orange);
      }
    }

    return Card(
        color: Colors.blue.shade100,
        child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(children: <Widget>[
                    Container(
                        alignment: Alignment(-0.9, -0.9),
                        child: IconButton(
                          icon: const Icon(Icons.close),
                          color: Colors.black,
                          onPressed: () {
                            close();
                          },
                        )),
                    Text(task!.content),
                    SizedBox(height: 10),
                    getIconCompleted(),
                    SizedBox(height: 10),
                    Text(task!.createdAt.toString()),
                    Row(children: <Widget>[
                      Consumer<TasksCollection>(
                          builder: (context, tasks, child) => Container(
                              margin: const EdgeInsets.only(top: 25),
                              child: FlatButton(
                                child: Text('Delete',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                                color: Colors.red.shade400,
                                onPressed: () {
                                  final snackBar = SnackBar(
                                    content: const Text(
                                        'Are you sure you want to delete this task ?'),
                                    action: SnackBarAction(
                                      label: 'Yes',
                                      onPressed: () {
                                        tasks.deleteTask(task!);
                                        close();
                                      },
                                    ),
                                  );

                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                },
                              ))),
                      Container(
                          margin: const EdgeInsets.only(top: 25, left: 25),
                          child: FlatButton(
                            child: Text('Update',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            color: Colors.blue.shade400,
                            onPressed: () {
                              Navigator.pushNamed(context, '/one_task',
                                  arguments: task!);
                            },
                          ))
                    ])
                  ])
                ])));
  }
}
