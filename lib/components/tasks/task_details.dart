import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';
import 'package:intl/intl.dart';

class TaskDetails extends StatelessWidget {
  final Task? task;

  const TaskDetails({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget getIconCompleted(){
      if(task!.completed == true){
        return Icon(Icons.check_circle_rounded, color: Colors.green);
      }
      else{
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
                  children: <Widget> [
                    Column(
                      children: <Widget>[
                          Text(task!.content),
                          SizedBox(height: 10), 
                          getIconCompleted(),
                          SizedBox(height: 10),
                          Text(task!.createdAt.toString())
                      ]
                    )
                  ]
              )
      )
    );
  }
}