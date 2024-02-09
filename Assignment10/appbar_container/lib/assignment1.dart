import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar1"),
        backgroundColor: Colors.black,
        actions: const [
          Icon(Icons.favorite),
          SizedBox(width: 10,),
          Icon(Icons.menu),
        ],
      ),
    );
  }
}
