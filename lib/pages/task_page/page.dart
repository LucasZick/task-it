import 'package:flutter/material.dart';

import '../../models/task_model.dart';

class TaskPage extends StatefulWidget {
  Task task;
  TaskPage({super.key, required this.task});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.task.name),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: widget.task.changeStatus,
          child: const Text('Change'),
        ),
      ),
    );
  }
}
