import 'package:faker/src/random_generator.dart';
import 'package:flutter/material.dart';

class Task {
  int id;
  String content;
  bool completed = false;
  DateTime? createdAt;

  Task(
      {required this.id,
      required this.content,
      required this.completed,
      required this.createdAt});
}
