import 'dart:developer';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextScreen extends StatefulWidget {
  TextScreen({super.key, required this.text});
  String text;

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  ///THIS METHOD GET CALLED WHEN PARENT WIDGET CHANGES ITS CONFIGURATION
  ///AND REQUIRES THE WIDGET TO REBUILD
  ///IT RECEIVES OLDWIDGET AS AN ARGUMENTS ALLOWING YOU TO COMPAIR WITH NEW WIDGET
  @override
  void didUpdateWidget(TextScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    log("In didUpdateWidget");
  }

  @override
  Widget build(BuildContext context) {
    log("In Text Screen build");

    return Text(widget.text);
  }
}
