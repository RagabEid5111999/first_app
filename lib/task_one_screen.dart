import 'package:flutter/material.dart';

class TaskOneScreen extends StatefulWidget {
  const TaskOneScreen({super.key});

  @override
  State<TaskOneScreen> createState() => _TaskOneScreenState();
}

class _TaskOneScreenState extends State<TaskOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        leading: Icon(Icons.edit),
      ),
    );
  }
}
