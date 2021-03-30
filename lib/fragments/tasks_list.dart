import 'package:flutter/material.dart';
import 'package:sleek_spacing/sleek_spacing.dart';
import 'package:taskapp/widgets/task_item.dart';

class TasksList extends StatelessWidget {
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
        TaskItem(),
        TaskItem(),
        TaskItem(),
        TaskItem(),
        TaskItem(),
        TaskItem(),
        TaskItem(),
      ],
    );
  }
}
