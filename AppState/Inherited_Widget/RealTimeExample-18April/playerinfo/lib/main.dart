import 'package:playerinfo/controller/inheritedwidget_controller.dart';
import 'package:playerinfo/model/player_model.dart';
import 'package:playerinfo/view/info_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlayerData(
        player: PlayerModel(
          playerName: "Rohit Sharma",
          country: "India",
          teamName: "MI",
        ),
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
