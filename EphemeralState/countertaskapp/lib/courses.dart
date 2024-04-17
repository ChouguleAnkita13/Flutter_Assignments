import 'package:flutter/material.dart';

class Course extends StatefulWidget {
  final String courseName;
  const Course ({super.key,required this.courseName});

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  int refCounter = 0;
  @override
  Widget build(BuildContext context) {
   return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    refCounter++;
                  });
                },
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  color: widget.courseName=="Java"?Colors.blue:Colors.pink,
                  child:  Text(
                    widget.courseName,
                    style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
              Text("$refCounter",style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        ))
            ],
          );
  }
}
