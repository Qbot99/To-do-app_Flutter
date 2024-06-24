import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  final String task;
  final bool isCompleted;
  Function(bool?)? onChanged;
  Tasktile(
      {super.key,
      required this.isCompleted,
      required this.onChanged,
      required this.task});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.amber,
        child: Row(
          children: [
            Checkbox(value: isCompleted, onChanged: onChanged),
            Text(
              task,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: isCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
