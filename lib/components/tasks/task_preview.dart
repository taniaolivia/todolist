import 'package:flutter/material.dart';
import 'package:todolist/components/tasks/task_details.dart';
import 'package:todolist/models/task.dart';

class TaskPreview extends StatelessWidget {
  final Task task;
  final Function selectedTask;

  const TaskPreview({Key? key, required this.task, required this.selectedTask}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget getIconCompleted(){
      if(task.completed == true){
        return Icon(Icons.check_circle_rounded, color: Colors.green);
      }
      else{
        return Icon(Icons.access_time_filled, color: Colors.orange);
      }
    }

    Color getCompletedBgColor(){
      if(task.completed == true){
        return Colors.green.shade100;
      }
      else{
        return Colors.orange.shade100;
      }
    }
    
    return Card(
      color: getCompletedBgColor(),
      child: ListTile(
        title: Text(task.content),
        trailing: getIconCompleted(),
        onTap:() {
          selectedTask(task);
        },
    ));
  }
}
