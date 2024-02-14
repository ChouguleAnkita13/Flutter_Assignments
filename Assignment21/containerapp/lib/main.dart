import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(color: Colors.blue, width: 5),
            borderRadius:  BorderRadius.vertical(top: Radius.circular(40)),
            boxShadow: const [
              BoxShadow(
                  color: Colors.purple, offset: Offset(30, 30), blurRadius: 8),
              BoxShadow(
                  color: Colors.red, offset: Offset(20, 20), blurRadius: 8),
              BoxShadow(color: Colors.green, offset: Offset(10, 10))
            ],
            gradient: const LinearGradient(
              colors: [Colors.pinkAccent, Colors.black],
              stops: [0.3, 0.5],
            ),
          ),
        ),
      ),
    );
  }
}
