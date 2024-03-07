import 'package:flutter/material.dart';

import 'package:bottomsheet/bottomsheet.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomSheetDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}





