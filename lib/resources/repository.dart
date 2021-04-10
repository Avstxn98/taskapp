import 'dart:convert';

import 'package:http/http.dart' as http;
import 'data_models.dart';

Future<List<Task>> getTasks() async {
  final response =
      await http.get(Uri.parse('http://localhost:8000/api/v1/tasks/'));

  // transform response body to json
  final data = jsonDecode(response.body);

  // from the json data, the list of tasks are accessed from the
  // 'objects' field
  final tasksData = data['objects'];

  final List<Task> results = [];

  tasksData.forEach((t) {
    results.add(Task.fromJson(t));
  });

  return results;
}
