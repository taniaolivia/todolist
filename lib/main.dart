import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:todolist/components/sign_in.dart';
import 'package:todolist/components/sign_up.dart';
import 'package:todolist/data/tasks_collection.dart';
import 'package:todolist/screens/all_task.dart';
import 'package:todolist/screens/create_task.dart';
import 'package:todolist/screens/one_task.dart';
import 'screens/home.dart';
import 'screens/all_task.dart';

void initialization(BuildContext context) async {}

void main() {
  FlutterNativeSplash.removeAfter(initialization);

  runApp(ChangeNotifierProvider(
      create: (context) => TasksCollection(), child: TodoList()));
}

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Todo list',
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.white,
            fontFamily: 'SedgwickAveDisplay-Regular'),
        home: Home(),
        initialRoute: '/',
        routes: {
          '/all_tasks': (context) => AllTasks(selectedTask: () {}),
          '/one_task': (context) => OneTask(),
          '/create_task': (context) => CreateTask(),
          '/sign_in': (context) => SignIn(),
          '/sign_up': (context) => SignUp(),
        });
  }
}
