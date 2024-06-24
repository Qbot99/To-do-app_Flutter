import 'package:flutter/material.dart';

class Button extends StatelessWidget {
   Button({super.key, required this.buttonName, required this.onPressed});
  VoidCallback onPressed;
  final buttonName;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onPressed,
    child: Text(buttonName),
    color: Colors.blue,);
  }
}