import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:todolist/screens/all_task.dart';

import 'screens/home.dart';
import 'screens/all_task.dart';

/*class Todo {
  Todo({required this.name, required this.checked});
  final String name;
  bool checked;
}*/

void initialization(BuildContext context) async {}

void main() {
  FlutterNativeSplash.removeAfter(initialization);

  runApp(TodoList());
}

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Todo list',
        theme: ThemeData(
            // Define the default brightness and colors.
            brightness: Brightness.light,
            primaryColor: Colors.white,

            // Define the default font family.
            fontFamily: 'SedgwickAveDisplay-Regular'),
        home: AllTasks(selectedTask: (){}) /*Scaffold(
        appBar: AppBar(
          title: Text("Todo list"),
        ),
      ),*/
        );
  }
}
