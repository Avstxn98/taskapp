import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Radio(
          groupValue: '',
          value: 'off',
          onChanged: (v) {},
        ),
        title: Text('Submit cheque to accountant'),
        subtitle: Text('Due yesterday'),
      ),
    );
  }
}
