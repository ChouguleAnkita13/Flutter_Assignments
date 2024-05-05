import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    log("In MainApp build");
    return MultiProvider(
        providers: [
          Provider(create: (context) {
            return const Player(playerName: "Virat", jerNo: 18);
          }),
          ChangeNotifierProvider(create: (context) {
            return Match(matchNo: 285, runs: 7000);
          }),
        ],
        child: const MaterialApp(
          home: MyApp(),
          debugShowCheckedModeBanner: false,
        ));
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    log("In MyApp build");

    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(Provider.of<Player>(context).playerName),
          const SizedBox(height: 30),
          Text("${Provider.of<Player>(context).jerNo}"),
          const SizedBox(height: 30),
          Consumer(builder: (context, provider, child) {
            log("In Consumer");
            return Column(
              children: [
                Text("${Provider.of<Match>(context).matchNo}"),
                const SizedBox(height: 30),
                Text("${Provider.of<Match>(context).runs}"),
              ],
            );
          }),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {
                Provider.of<Match>(context, listen: false)
                    .changeData(333, 8990);
              },
              child: const Text("Change Data")),
          const SizedBox(height: 30),
          const NormalClass(),
        ]),
      ),
    );
  }
}

class NormalClass extends StatelessWidget {
  const NormalClass({super.key});

  @override
  Widget build(BuildContext context) {
    log("In Normal build");
    return Consumer(builder: (context, value, child) {
      log("In Normal Consumer");
      return Text("Runs:${Provider.of<Match>(context).runs}");
    });
  }
}

class Player {
  final String playerName;
  final int jerNo;

  const Player({required this.playerName, required this.jerNo});
}

class Match extends ChangeNotifier {
  int matchNo;
  int runs;

  Match({required this.matchNo, required this.runs});

  void changeData(int matchNo, int runs) {
    this.matchNo = matchNo;
    this.runs = runs;
    notifyListeners();
  }
}
