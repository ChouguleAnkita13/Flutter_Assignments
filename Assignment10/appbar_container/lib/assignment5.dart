import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar5"),
        backgroundColor: Colors.black,),
      body: Center(child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Image.asset("assets/images/img1.jpg",height: 150,width: 150,),
            const SizedBox(width: 10,),
             Image.asset("assets/images/img1.jpg",height: 150,width: 150,),
            const SizedBox(width: 10,),
             Image.asset("assets/images/img1.jpg",height: 150,width: 150,),
          ],
        ),
      )),
    );
  }
}
