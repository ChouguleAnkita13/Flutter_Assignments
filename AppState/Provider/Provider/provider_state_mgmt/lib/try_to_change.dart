import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//use provider when data will not going to be change 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (BuildContext context) {
        return   Company(companyName: "Google", empCount: 350);
      },
      child: const MainApp()
    );
  }
}

class Company {
   String companyName;
   int empCount;

   Company({required this.companyName, required this.empCount});
   void changeData(String companyName) {
    this.companyName = companyName;
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
              ElevatedButton(onPressed: (){
                    Provider.of<Company>(context, listen: false).changeData("Meta");
                    setState(() {                     
                    });
              
              }, child: const Text("Change Data"))
            ],
          ),
        ),
      ),
    );
  }
}
