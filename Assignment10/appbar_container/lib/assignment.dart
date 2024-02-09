import 'package:flutter/material.dart';

class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.notification_important),
        title: const Text("Padding&Margin"),
        backgroundColor: Colors.black,
        actions: const [
          Icon(Icons.favorite),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.menu),
        ],
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Container(
            height: 300,
            width: 300,
            color: Colors.amber,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            child: Image.network(
              "data:image/jpeg;base64,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",
              width: 141,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}
