import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';
import 'package:todolist/data/tasks_collection.dart';
import 'package:todolist/models/task.dart';
import 'package:checkbox_formfield/checkbox_formfield.dart';

class TaskForm extends StatefulWidget {
  final Task? task;
  final bool updateForm;
  const TaskForm({Key? key, required this.task, required this.updateForm})
      : super(key: key);

  @override
  _TaskForm createState() {
    return _TaskForm(task, updateForm);
  }
}

class _TaskForm extends State<TaskForm> {
  final _formKey = GlobalKey<FormState>();
  final Task? task;
  final bool updateForm;
  bool? completedValue = false;

  final contentController = TextEditingController();

  _TaskForm(this.task, this.updateForm);

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Consumer<TasksCollection>(
            builder: (context, tasks, child) => Column(children: <Widget>[
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 40),
                      child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.task),
                            hintText: 'Enter a task',
                          ),
                          controller: contentController)),
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text("Status :",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45)))),
                  Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 100, 30),
                      child: Column(children: <Widget>[
                        CheckboxListTileFormField(
                          title: Text('Still In Progress'),
                          onSaved: (bool? value) {
                            completedValue = false;
                          },
                          onChanged: (value) {
                            if (value) {
                              completedValue = false;
                            } else {
                              completedValue = false;
                            }
                          },
                          contentPadding: EdgeInsets.all(1),
                        ),
                        CheckboxListTileFormField(
                          title: Text('Finished'),
                          onSaved: (bool? value) {
                            completedValue = true;
                          },
                          onChanged: (value) {
                            if (value) {
                              completedValue = true;
                            } else {
                              completedValue = true;
                            }
                          },
                          contentPadding: EdgeInsets.all(1),
                        )
                      ])),
                  Container(
                    child: RaisedButton(
                        onPressed: () {
                          // Validate returns true if the form is valid, or false otherwise.
                          if (_formKey.currentState!.validate()) {
                            if (updateForm == true) {
                              //print(task!.id);
                              tasks.updateTask(
                                  task!, contentController, completedValue);
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content:
                                        Text('Task is updated successfully!')),
                              );
                              Navigator.pop(context, '/all_tasks');
                            } else {
                              tasks.addTask(contentController.text);
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content:
                                        Text('Task is added successfully!')),
                              );
                              Navigator.pop(context, '/all_tasks');
                            }
                          }
                        },
                        child: Text(
                          "Confirm",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.green.shade400),
                  ),
                  SizedBox(height: 40)
                ])));
  }
}
