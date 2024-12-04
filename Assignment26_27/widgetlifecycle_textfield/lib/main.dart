import 'package:flutter/material.dart';
import 'package:widgetlifecycle_textfield/textfield_assignment26.dart';
// import 'package:widgetlifecycle_textfield/widgetlifecycle.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const WidgetLifeCycleDemo(),
      home: const TextFieldDemo(),
      theme: ThemeData(
          textTheme: const TextTheme(
              displayMedium: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold))),
      debugShowCheckedModeBanner: false,
    );
  }
}
