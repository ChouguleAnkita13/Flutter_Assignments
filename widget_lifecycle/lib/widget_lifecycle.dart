import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:widget_lifecycle/next_page.dart';
import 'package:widget_lifecycle/text_screen.dart';

class WidgetLifecycle extends StatefulWidget {
  const WidgetLifecycle({super.key});

  ///THIS METHOD GET CALLED WHEN OBJECT OF STATEFUL WIDGET IS CALLED
  ///THIS METHOD RETURNS OBJECT OF ITS STATE CLASS
  @override
  State<WidgetLifecycle> createState() {
    log("In Create state");
    return _WidgetLifecycleState();
  }
}

class _WidgetLifecycleState extends State<WidgetLifecycle> {
  ///THIS METHOD CALLED WHEN STATE OBJECT IS CREATED
  ///THIS CALLS ONLY ONCE WHEN STATE OBJECT IS CREATED
  ///IT CAN CONTAIN FETCHING DATA FROM EXTERNAL RESOURCES ,INITIALIZING VARIABLES

  @override
  void initState() {
    super.initState();
    log("In InitState");
  }

  ///THIS METHOD CALLED IMIDIATLY AFTER INITSTATE
  ///
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    log("In didChangeDependencies");
  }

  String str = "Ankita";

  ///THIS BUILD METHOD GET CALLED WHEN CHANGE HAPPENS IN WIDGET TREE
  ///THE FIRST CALL GOES TO BUILD METHOD FROM FRAMEWORK.DART
  @override
  Widget build(BuildContext context) {
    log("In build method");

    return Scaffold(
      body: Column(
        children: [
          TextScreen(
            text: str,
          ),
          ElevatedButton(
            onPressed: () {
              ///THIS SETSTATE MENTHOD NOTIFIES FREAMWORK THAT CHANGE HAS HAPPENED AND REQUIRES TO RERUN THE BUILD METHOD
              setState(() {
                log("In setState method");

                str = "Sakshi";
              });
            },
            child: const Icon(Icons.arrow_forward_sharp),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const NextPage()));
        },
        child: const Icon(Icons.arrow_forward_sharp),
      ),
    );
  }

  ///DEACTIVATE AND DISPOSE METHOD WORKS WHEN WIDGET REMOVE FROM
  ///WIDGET TREE PERMANATLY
  ///THIS DISPOSE METHOD CALLS ONLY ONCE WHEN WIDGET REMOVE PERMANANTLY FROM WIDGET TREE
  ///E.G:THE CURRENT WIDGET IS REMOVED PERMANtly WHEN IT REPLACED WITH NEXTPAGE WIDGET
  @override
  void deactivate() {
    super.deactivate();
    log("In deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    log("In dispose");
  }
}
