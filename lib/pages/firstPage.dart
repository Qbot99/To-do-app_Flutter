import 'package:flutter/material.dart';
import 'package:todoapp_flutter/utilities/taskTile.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {


void onChanged (bool? value, int index) {
  setState(() {
    tasks[index][1] = !tasks[index][1];
  });
}
List tasks = [
  ["first task", false],
  ['second task', true]
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To do app",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(itemCount: tasks.length ,itemBuilder:(context, index) {
              return Tasktile(isCompleted: tasks[index][1], onChanged:(value) => onChanged(value, index), task: tasks[index][0]);
            },),
          )
        ],
      ),
    );
  }
}
