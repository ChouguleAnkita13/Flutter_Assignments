import "package:flutter/material.dart";
import "package:toggleboxcolor/toggle_box_color.dart";

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: ToggleBoxColor(),
    );
  }
}
