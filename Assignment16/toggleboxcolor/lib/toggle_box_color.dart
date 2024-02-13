import 'package:flutter/material.dart';
 
class ToggleBoxColor extends StatefulWidget{
  const ToggleBoxColor({super.key});

  @override
  State<ToggleBoxColor> createState(){
    return _ToggleBoxColorState();
  }
}

class _ToggleBoxColorState extends State<ToggleBoxColor>{
  int counter1=0;
  int counter2=0;
  Color setBoxColor1(){
    if(counter1==1){
      return Colors.red;
    }else if(counter1==2){
      return Colors.blue;
    }else if(counter1==3){
      return Colors.green;
    }else{
      counter1=0;
      return Colors.amber;
    }
  }
  Color setBoxColor2(){
    if(counter2==1){
      return Colors.blue;
    }else if(counter2==2){
      return Colors.green;
    }else if(counter2==3){
      return Colors.red;
    }else{
      counter2=0;
      return Colors.black;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Toggle Box Color"),),
      body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
        Column(mainAxisAlignment: MainAxisAlignment.center,children: [
          Container(height: 100,width: 100,color:setBoxColor1(),),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            setState((){
              counter1++;
            });
          }, child: const Text("Button1"))
        ],),
        Column(mainAxisAlignment: MainAxisAlignment.center,children: [
          Container(height: 100,width: 100,color:setBoxColor2(),),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            setState((){
              counter2++;
            });
          }, child: const Text("Button2"))
        ],),
    ]));
  }
}