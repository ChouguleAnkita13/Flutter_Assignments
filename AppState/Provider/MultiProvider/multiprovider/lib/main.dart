import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      Provider(create: (context) {
        return const Employee(empId: 101, empName: "Ankita");
      }),
      ChangeNotifierProvider(create: (context) {
        return Project(projectName: "Health Care", devType: "Web Devlopment");
      }),
    ],
    child: const MaterialApp(
      home:MyApp(),
      debugShowCheckedModeBanner: false,
    ));
  }
}
class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    return  Scaffold(
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text(Provider.of<Employee>(context).empName),
              const SizedBox(height: 30,),
              Text("${Provider.of<Employee>(context).empId}"),
              const SizedBox(height: 30,),

              Text(Provider.of<Project>(context).projectName),
              const SizedBox(height: 30,),
              Text(Provider.of<Project>(context).devType),
              const SizedBox(height: 30,),

              ElevatedButton(onPressed: 
              (){
                Provider.of<Project>(context,listen: false).changeProject("EdTech", "Mobile Dev");
              }, child: const Text("Change Project"))





          ]),
        ),
      );
  }
}

class Employee {
  final String empName;
  final int empId;

  const Employee({required this.empId, required this.empName});
}

class Project extends ChangeNotifier {
  String projectName;
  String devType;

  Project({required this.projectName, required this.devType});

  void changeProject(String projectName, String devType) {
    this.projectName = projectName;
    this.devType = devType;
    notifyListeners();
  }
}
