import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  @override
  State<QuizApp> createState(){
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp>{
  int count=1;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tech Quiz"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
             Text("Question: $count /10 "),
             const SizedBox(height: 20,),
             Text("Question$count :What is Flutter?"),
             const SizedBox(height: 20,),

             Container(width: 300,child: ElevatedButton(onPressed: (){}, child: const Text("Option1"))),
             const SizedBox(height: 20,),

             Container(width: 300,child: ElevatedButton(onPressed: (){}, child: const Text("Option2"))),
             const SizedBox(height: 20,),

             Container(width: 300,child: ElevatedButton(onPressed: (){}, child: const Text("Option3"))),
             const SizedBox(height: 20,),

             Container(width: 300,child: ElevatedButton(onPressed: (){}, child: const Text("Option4"))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState((){
          count++;
        });
      },
      child: const Icon(Icons.arrow_right_alt),),
    );
  }
}
