import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'screens/home.dart';

final List<Todo> _todos = <Todo>[];

class Todo {
  Todo({required this.name, required this.checked});
  final String name;
  bool checked;
}

void initialization(BuildContext context) async {}

void main() {
  FlutterNativeSplash.removeAfter(initialization);

  runApp(new TodoList());
}

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Todo list',
      theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.dark,
          primaryColor: Colors.white,

          // Define the default font family.
          fontFamily: 'SedgwickAveDisplay'),
      home: new Home(),
    );
  }
}
