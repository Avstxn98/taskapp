import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String title;
  final String description;

  TaskItem({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Radio(
          groupValue: '',
          value: 'off',
          onChanged: (v) {},
        ),
        title: Text(title),
        subtitle: Text(description),
      ),
    );
  }
}
