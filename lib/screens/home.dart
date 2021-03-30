import 'package:flutter/material.dart';
import 'package:taskapp/fragments/tasks_list.dart';
import 'package:taskapp/widgets/employee_selector.dart';
import 'package:taskapp/widgets/task_progress.dart';

// Shows the list of tasks related to a selected user
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      appBar: AppBar(
        title: Text('Tusssk'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text('Add Employee')),
                PopupMenuItem(child: Text('Logout')),
                PopupMenuItem(child: Text('About')),
              ];
            },
          )
        ],
      ),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
        children: [
          // employee selector,
          EmployeeSelector(),

          // progress
          TaskProgress(),

          // list of tasks
          TasksList(),
        ],
      ),
    );
  }
}
