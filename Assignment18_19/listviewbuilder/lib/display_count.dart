import 'package:flutter/material.dart';

class DisplayCount extends StatefulWidget {
  const DisplayCount({super.key});
  @override
  State<DisplayCount> createState() {
    return _DisplayCountState();
  }
}

class _DisplayCountState extends State<DisplayCount> {
  List<int> listCount = [];
  int count = 0;
  void incrementCount() {
    setState(() {
      count++;
      listCount.add(count);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Count"),
      ),
      body: ListView.builder(
          itemCount: listCount.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              height: 30,
              alignment: Alignment.center,
              color: const Color.fromARGB(255, 150, 194, 229),
              child: Text("${listCount[index]}"),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCount,
        child: const Icon(Icons.add),
      ),
    );
  }
}
