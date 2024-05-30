import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation/screens/fourth.dart';
import 'package:getx_navigation/screens/home.dart';
import 'package:getx_navigation/screens/second.dart';
import 'package:getx_navigation/screens/third.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const Home(),
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      getPages: [
        GetPage(name: '/', page: () => const Home()),
        GetPage(name: '/second', page: () => const Second()),
        GetPage(
          name: '/third',
          page: () => const Third(),
          transition: Transition.zoom,
        ),
        GetPage(name: "/fourth", page: () => const Fourth()),
      ],
    );
  }
}