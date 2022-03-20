import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import '../models/task.dart';

var faker = new Faker();
var tasks = new List<Task>.generate(
    15,
    (i) => Task(
        id: i,
        content: faker.lorem.sentence(),
        completed: faker.randomGenerator.boolean(),
        createdAt: faker.date.dateTime(minYear: 2021, maxYear: 2022)));
