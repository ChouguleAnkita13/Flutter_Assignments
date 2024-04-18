// ignore_for_file: must_be_immutable

import 'package:assignment/model/employee.dart';
import 'package:flutter/material.dart';

class SharedData extends InheritedWidget {
  final Employee empObj;
  const SharedData({
    super.key,
    required super.child,
    required this.empObj,
  });

  static SharedData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SharedData>()!;
  }

  @override
  bool updateShouldNotify(SharedData oldWidget) {
    return empObj != oldWidget.empObj;
  }
}
