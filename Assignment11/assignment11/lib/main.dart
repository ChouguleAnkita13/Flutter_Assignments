import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Assignmemt11"),
          backgroundColor: const Color.fromARGB(255, 42, 21, 33),
          foregroundColor: Colors.white,
          centerTitle: true,
          shape:ContinuousRectangleBorder(borderRadius: BorderRadius.circular(200)),
          shadowColor: const Color.fromARGB(255, 134, 36, 69),
          
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.deepPurple,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



      // // body: Container(
      //   //   color: Colors.amber,
      //   //   child: const Center(
      //   //     widthFactor: 2.0,
      //   //     heightFactor: 2.0,
      //   //     child: Text("Hello"),
      //   //   ),
      //   // ),
      //   //========
      //   body: Container(
      //     color: Colors.amber,
      //     child: const SizedBox(
      //       // width: 200.00,
      //       // height: 200.00,
      //       child: Text(
      //         "Hi",
      //         textAlign: TextAlign.center,
      //       ),
      //     ),
      //   ),
      //   //==========