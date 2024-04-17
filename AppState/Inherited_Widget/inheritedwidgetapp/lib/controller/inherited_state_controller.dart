import "package:flutter/material.dart";

class SharedDataWidget extends InheritedWidget{
  final int song;
  final String name;
  const SharedDataWidget({super.key,required super.child,required this.song,required this.name});

  static SharedDataWidget of(BuildContext context){
    return  context.dependOnInheritedWidgetOfExactType<SharedDataWidget>()!;
  }
  @override
  bool updateShouldNotify(SharedDataWidget oldWidget){
    return song !=oldWidget.song;
  }
}