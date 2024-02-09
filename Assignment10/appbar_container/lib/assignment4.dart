import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar 4"),
        backgroundColor: Colors.black,),
      body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100, width: 100, margin: EdgeInsets.only(right: 20),color: Colors.amber,
            ),
            Container(
              height: 100, width: 100, color: Colors.black,
            )
          ],
        ),
      ) ,
    );
  }
}
