import "package:flutter/material.dart";
import "package:inheritedwidgetapp/controller/inherited_state_controller.dart";
import "package:inheritedwidgetapp/view/home_screen.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const SharedDataWidget(
      song: 50,
      name: "Lata Mangeshkar",
      child: MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
