import 'package:flutter/material.dart';
import 'package:sleek_spacing/sleek_spacing.dart';
import 'package:taskapp/resources/data_models.dart';
import 'package:taskapp/resources/repository.dart';
import 'package:taskapp/widgets/task_item.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [];

  void setUp() async {
    final tasks = await getTasks();

    setState(() {
      this.tasks = tasks;
    });
  }

  @override
  void initState() {
    super.initState();
    setUp();
  }

  @override
  Widget build(BuildContext context) {
    return SleekColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: SleekInsets.normal(SleekSides.vertical),
      children: [
        SleekPadding(
          padding: SleekInsets.normal(SleekSides.horizontal),
          child: Text(
            'TASKS',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ),
        // [...] is a spread operator. meaning it offloads the contents of
        // an object in-place
        ...(tasks.map((task) {
          // .map transforms one data into another
          // for example transform 1, 2, 3 to a, b, c
          //
          // [1, 2, 3].map((n) {
          //  if (n == 1) return 'a';
          //  if (n == 2) return 'b';
          //  if (n == 3) return 'c';
          // })
          //
          // .map only applies to iterables like lists, sets, etc.
          return TaskItem(
            title: task.title,
            description: task.description,
          );
        }).toList())
      ],
    );
  }
}
