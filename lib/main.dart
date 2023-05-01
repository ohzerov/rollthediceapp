import 'package:flutter/material.dart';
import 'package:flutterr_course_firstapp/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 154, 19, 215),
          Color.fromARGB(255, 105, 101, 235),
          Color.fromARGB(255, 17, 199, 233),
        ]),
      ),
    ),
  );
}
