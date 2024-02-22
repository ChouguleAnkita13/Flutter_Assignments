import 'package:flutter/material.dart';
import 'package:widgetlifecycle_textfield/textfield_assignment26.dart';

class WidgetLifeCycleDemo extends StatefulWidget {
  const WidgetLifeCycleDemo({super.key});
  @override
  State<WidgetLifeCycleDemo> createState() {
    print("In Create State");
    return _WidgetLifeCycleDemoState();
  }
}

class _WidgetLifeCycleDemoState extends State<WidgetLifeCycleDemo> {
  @override
  void initState() {
    super.initState();
    print("In initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("In didChangeDependencies");
  }

  void userInteract() {
    setState(() {
      print("In setState");
      active = !active;
    });
  }

  @override
  void didUpdateWidget(WidgetLifeCycleDemo oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    super.deactivate();
    print("In deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("In dispose");
  }

  bool active = true;
  Scaffold isActiveScreen() {
    if (active == true) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: userInteract,
          child: const Icon(Icons.forward),
        ),
      );
    } else {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>TextFieldDemo()));
          },
          child: const Icon(Icons.arrow_back_ios_new_sharp),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    print("In build method");
    return isActiveScreen();
  }
}
