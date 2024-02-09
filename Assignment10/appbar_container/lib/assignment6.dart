import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar6"),
        backgroundColor: Colors.black,),
      body:Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100, width: 100, margin: const EdgeInsets.only(top: 10), color: Colors.amber,
              ),
              Container(
                height: 100, width: 100, margin: const EdgeInsets.only(top:10),color: Colors.black,
              ),
               Container(
                height: 100, width: 100,margin: const EdgeInsets.only(top:10), color: Colors.amber,
              ),
              Container(
                height: 100, width: 100, margin: const EdgeInsets.only(top:10),color: Colors.black,
              ),
               Container(
                height: 100, width: 100, margin: const EdgeInsets.only(top:10),color: Colors.amber,
              ),
              Container(
                height: 100, width: 100,margin: const EdgeInsets.only(top:10), color: Colors.black,
              ),
              Container(
                height: 100, width: 100,margin: const EdgeInsets.only(top:10), color: Colors.amber,
              ),
              Container(
                height: 100, width: 100,margin: const EdgeInsets.only(top:10), color: Colors.black,
              ),
              Container(
                height: 100, width: 100, margin: const EdgeInsets.only(top:10),color: Colors.amber,
              ),
              Container(
                height: 100, width: 100, margin: const EdgeInsets.only(top:10),color: Colors.black,
              ),        
            ],
          ),
        ),
      ) ,
    );
  }
}
