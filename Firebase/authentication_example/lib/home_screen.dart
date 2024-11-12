import 'package:authentication_example/login.dart';
import 'package:authentication_example/session_data_shared_pre.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.email});
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(email),
        actions: [
          GestureDetector(
              onTap: () {
                FirebaseAuth.instance.signOut();

                /// SHARED PREFERENCE - Store Data
                SessionData.storeSessionData(isLogin: false, email: "");
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                    (route) => false);
              },
              child: const Icon(Icons.logout))
        ],
      ),
      body: const Center(
        child: Text("HomeScreen"),
      ),
    );
  }
}
