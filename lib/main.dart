import 'package:flutter/material.dart';
import 'package:task_3/pages/HomePage.dart';
import 'package:task_3/pages/horizontal.dart';
import 'package:task_3/pages/move.dart';
import 'package:task_3/pages/tap.dart';
import 'package:task_3/pages/zoom.dart';

void main() {
  runApp(TaskApp());
}

class TaskApp extends StatefulWidget {
  @override
  State<TaskApp> createState() => _TaskAppState();
}

class _TaskAppState extends State<TaskApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      
      initialRoute: '/',
      routes: {
        '/' : (context) => const HomePage(),
        '/tap' : (context) => const TapGestures(),
        '/horizontal' : (context) => const HorizontalGestures(),
        '/move' : (context) => const Move(),
        '/zoom' : (context) => const Zoom(),
      },
    );
  }
}
