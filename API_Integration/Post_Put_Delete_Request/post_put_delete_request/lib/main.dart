import 'package:flutter/material.dart';
import 'package:post_put_delete_request/controller.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: (){
                postEmployeeData();
              },child: const Text("Post Data"),),
              ElevatedButton(onPressed: (){},child: const Text("Put Data"),),
              ElevatedButton(onPressed: (){},child: const Text("Delete Data"),),

            ],
          ),
        ),
      ),
    );
  }
}
