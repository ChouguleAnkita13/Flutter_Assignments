import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:student_info/home_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///TO START FLUTTER ENGINE
  await Firebase.initializeApp(
    ///TO INITIALIZE FIREBASE IN APP
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());

  ///ENTRY POINT OF APP
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}
