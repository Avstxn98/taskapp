class User {
  final String fullname;
  final String username;

  User({this.fullname, this.username});
}

class Company {
  final String title;
  final String address;

  Company({this.title, this.address});
}

class Department {
  final String title;
  final Company company;

  Department({this.title, this.company});
}

class Employee {
  final User user;
  final Department department;
  final String position;
  final String avatar;

  Employee({this.user, this.department, this.position, this.avatar});
}

class Task {
  final String title;
  final String description;
  final Employee employee;
  final bool completed;
  final DateTime createdAt;
  final DateTime deadline;

  Task({
    this.title,
    this.deadline,
    this.description,
    this.completed,
    this.createdAt,
    this.employee,
  });

  static Task fromJson(dynamic json) {
    return Task(title: json['title'], description: json['description']);
  }
}
