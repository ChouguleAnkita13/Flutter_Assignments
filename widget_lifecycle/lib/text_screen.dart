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
