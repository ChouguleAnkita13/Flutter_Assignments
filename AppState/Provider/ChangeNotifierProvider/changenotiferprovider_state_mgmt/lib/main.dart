import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//use ChangeNotifierProvider when data will going to be change
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    log("In build Myapp");
    return ChangeNotifierProvider(
        create: (BuildContext context) {
          return Company(companyName: "Google", empCount: 350);
        },
        child: const MainApp());
  }
}

class Company extends ChangeNotifier {
  String companyName;
  int empCount;

  Company({required this.companyName, required this.empCount});

  void myFun(String companyName) {
    this.companyName = companyName;
    notifyListeners();
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    log("In build Mainapp");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Provider.of<Company>(context).companyName),
              const SizedBox(
                height: 30,
              ),
              Text("${Provider.of<Company>(context).empCount}"),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Provider.of<Company>(context, listen: false).myFun("Meta");
                   
                    
                  },
                  child: const Text("Change Data")),
              const SizedBox(
                height: 30,
              ),
              const Demo(),
            ],
          ),
        ),
      ),
    );
  }
}

class Demo extends StatelessWidget {
  const Demo({super.key});
  @override
  Widget build(BuildContext context) {
    log("In build Demo");
    return Text("${Provider.of<Company>(context).empCount}");
  }
}
