import 'package:flutter/material.dart';
import 'package:plantapp/verification.dart';
// import 'package:plantapp/get_started.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Verification(),
      debugShowCheckedModeBanner: false,
    );
  }
}