import 'package:flutter/material.dart';

class Assignment extends StatefulWidget{
  const Assignment({super.key});
  @override
  State<StatefulWidget> createState() =>_AssignmentState();
  
}
class _AssignmentState extends State<Assignment>{
  bool box1=true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: const Text("Assignment"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             TextButton(
              onPressed: (){},
               child: Container(
                height: 100,width: 100,
                decoration: BoxDecoration(
                border: Border.all(color: Colors.black12)
                ),
                // child: TextButton(onPressed: (){},child: Text("")
                ),
            ),
             
            SizedBox(height: 30,),
            Container(
              height: 100,width: 100,
              decoration: BoxDecoration(
              border: Border.all(color: Colors.black12)
              ),
              child: TextButton(onPressed: (){},child: Text("")),
            ),
            SizedBox(height: 30,),
            Container(
              height: 100,width: 100,
              decoration: BoxDecoration(
              border: Border.all(color: Colors.black12)
              ),
              child: TextButton(onPressed: (){},child: Text("")),
            ),
      
          ])
        ),
      );
  }
}