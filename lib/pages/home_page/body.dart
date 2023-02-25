import 'package:flutter/material.dart';
import 'package:task_it/pages/home_page/components/task_list_tile.dart';

import '../../models/task_model.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key});

  List tasks = [
    Task(1, 'Fix the sink', 'House', true),
    Task(2, 'Wash the car', 'Car', false),
    Task(3, 'Clean the bathroom', 'House', true),
    Task(1, 'Fix the sink', 'House', true),
    Task(2, 'Wash the car', 'Car', false),
    Task(3, 'Clean the bathroom', 'House', true),
    Task(1, 'Fix the sink', 'House', true),
    Task(2, 'Wash the car', 'Car', false),
    Task(3, 'Clean the bathroom', 'House', true)
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [const TasksTitle(), ...getTasks(tasks)]),
      ),
    );
  }

  List<Widget> getTasks(tasks) {
    List<Widget> taskWidgets = [];
    tasks.forEach(
      (task) {
        taskWidgets.add(
          TaskListTile(task: task),
        );
      },
    );

    return taskWidgets;
  }
}

class TasksTitle extends StatelessWidget {
  const TasksTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'TASKS',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          VerticalDivider(
            width: 10,
          ),
          Icon(Icons.assignment),
        ],
      ),
    );
  }
}
