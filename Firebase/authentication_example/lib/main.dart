import 'package:authentication_example/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyC0TIS-kK1JATCG1e_vIe4skySwNZhB--k",
          appId: "1:163453163415:android:926b6a917405cdd2df16d2",
          messagingSenderId: "163453163415",
          projectId: "flutter-fire-auth-example"));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
