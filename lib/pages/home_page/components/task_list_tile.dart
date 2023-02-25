import 'package:flutter/material.dart';

import 'package:task_it/models/task_model.dart';
import 'package:task_it/pages/task_page/page.dart';

class TaskListTile extends StatelessWidget {
  Task task;
  TaskListTile({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(10))),
        elevation: 5,
        child: ListTile(
          title: Text(task.name),
          subtitle: Text(task.group),
          leading: Icon(task.done ? Icons.task_alt : Icons.circle_outlined),
          trailing: const Icon(Icons.edit_note),
          tileColor: getTileColor(context, task.done),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(10))),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => TaskPage(
                  task: task,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Color? getTileColor(context, done) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return done ? Colors.grey[700] : Colors.grey[900];
    } else {
      return done ? Colors.green[200] : Colors.red[200];
    }
  }
}
