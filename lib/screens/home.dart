import 'package:flutter/material.dart';
import 'package:todolist/components/tasks/task_form.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Home",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            backgroundColor: Colors.cyan.shade400),
        backgroundColor: Colors.cyan.shade50,
        body: Align(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Container(
                  child: FlatButton(
                      child: Icon(Icons.account_circle_rounded,
                          size: 100.0, color: Colors.blue.shade400),
                      onPressed: () =>
                          {Navigator.pushNamed(context, '/sign_in')})),
              SizedBox(width: 100),
              Container(
                  child: FlatButton(
                      child: Icon(Icons.task,
                          size: 100.0, color: Colors.green.shade400),
                      onPressed: () =>
                          {Navigator.pushNamed(context, '/all_tasks')})),
            ])));
  }
}
