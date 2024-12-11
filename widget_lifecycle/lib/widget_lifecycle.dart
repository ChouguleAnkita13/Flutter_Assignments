import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:widget_lifecycle/next_page.dart';
import 'package:widget_lifecycle/text_screen.dart';

class WidgetLifecycle extends StatefulWidget {
  const WidgetLifecycle({super.key});

  @override
  State<WidgetLifecycle> createState() => _WidgetLifecycleState();
}

class _WidgetLifecycleState extends State<WidgetLifecycle> {
  @override
  void initState() {
    super.initState();
    log("In InitState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    log("In didChangeDependencies");
  }

  String str = "Ankita";
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
