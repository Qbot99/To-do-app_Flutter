import 'package:flutter/material.dart';
import 'package:todoapp_flutter/utilities/button.dart';

class Alert extends StatelessWidget {
  Alert({super.key, required this.textControl, required this.onPressed});
  final textControl;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.amber,
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              controller: textControl,
              decoration: InputDecoration(
                  hintText: 'your task',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Button(
                      buttonName: "Add",
                      onPressed: onPressed,
                    ),
                  ),
                  Button(
                    buttonName: "Cancel",
                    onPressed: () {
                      textControl.clear();
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
