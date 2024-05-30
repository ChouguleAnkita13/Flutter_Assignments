import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/screens/first.dart';

void main() {
  runApp(
    GetMaterialApp(
      //don't need 'Get' before Material App if you're only using State Management
      home: First(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
    ),
  );
}
