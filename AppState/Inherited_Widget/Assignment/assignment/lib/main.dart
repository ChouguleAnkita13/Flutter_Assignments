import 'package:assignment/controller/inheritedwidget_controller.dart';
import 'package:assignment/model/employee.dart';
import 'package:assignment/view/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  SharedData(
    empObj: Employee(id: 101, empName: "Ankita", username: "ankitachougule"), 
    child: const MyApp());
  }
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

