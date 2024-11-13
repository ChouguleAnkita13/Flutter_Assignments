import 'package:authentication_example/home_screen.dart';
import 'package:authentication_example/login.dart';
import 'package:authentication_example/session_data_shared_pre.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void navigateToScreen(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () async {
      /// SHARED PREFERENCE - Get Data
      await SessionData.getSessionData();
      print("IS LOGIN : ${SessionData.isLogin!}");

      ///IF ISLOGIN IS TRUE MEANS USER IS ALREADY LOGIN THEN
      ///NAVIGATE TO HOME PAGE WITH ALREADY LOGED IN EMAIL ID
      ///ELSE GO TO LOGIN PAGE
      if (SessionData.isLogin!) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => HomeScreen(
              email: SessionData.email!,
            ),
          ),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    navigateToScreen(context);
    return const Scaffold(
      body: Center(
        child: Text(
          "Welcome",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
