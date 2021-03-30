import 'package:flutter/material.dart';
import 'package:taskapp/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final baseTheme = ThemeData(
      primarySwatch: Colors.blue,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: baseTheme.copyWith(
        textTheme: baseTheme.textTheme.copyWith(
          bodyText2: baseTheme.textTheme.bodyText2.copyWith(
            fontSize: 16,
          ),
        ),
      ),
      home: Home(),
    );
  }
}
