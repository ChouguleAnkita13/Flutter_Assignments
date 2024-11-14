import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Binding"),
        centerTitle: true,
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Get Data")),
            ElevatedButton(onPressed: () {}, child: const Text("Post Data")),
            ElevatedButton(onPressed: () {}, child: const Text("Delete Data")),
            ElevatedButton(onPressed: () {}, child: const Text("Update Data")),
          ],
        ),
      ),
    );
  }
}
