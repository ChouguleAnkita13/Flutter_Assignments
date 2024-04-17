import 'package:flutter/material.dart';

class SharedData extends InheritedWidget {
  final int id;
  final String empName;
  final String username;
  const SharedData(
      {super.key,
      required super.child,
      required this.id,
      required this.empName,
      required this.username});

  static SharedData of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<SharedData>()!;
  }

  @override
  bool updateShouldNotify(SharedData oldWidget){
    return (id != oldWidget.id || empName!=oldWidget.empName || username != oldWidget.username);

  }
}
