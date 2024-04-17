import 'package:countertaskapp/courses.dart';
import 'package:flutter/material.dart';

class CourseCounterScreen extends StatefulWidget {
  const CourseCounterScreen ({super.key});

  @override
  State<CourseCounterScreen > createState() => _CourseCounterScreenState();
}

class _CourseCounterScreenState extends State<CourseCounterScreen > {
  int javaCounter = 0;
  int flutterCounter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Course Counter"),
        centerTitle: true,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         Course(courseName: "Java"),
         Course(courseName: "Flutter")

        ],
      ),
    );
  }
}
