import 'package:flutter/material.dart';

class Listgenerate extends StatefulWidget {
  const Listgenerate({super.key});

  @override
  State<Listgenerate> createState() => _ListgenerateState();
}

class _ListgenerateState extends State<Listgenerate> {
  List username = [
    {"name": "Ragab", "age": 26},
    {"name": "mohmmed", "age": 22},
    {"name": "wael", "age": 23},
    {"name": "Adel", "age": 18},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Generate"), centerTitle: true),
      body: ListView(
        children: [
          ...List.generate(username.length, (i) {
            return Card(child: ListTile(title: Text(username[i]["name"])));
          }),
          ...List.generate(
            126,
            (index) => Text("${1900 + index}", style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
