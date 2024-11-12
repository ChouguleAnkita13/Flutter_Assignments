import 'dart:developer';

import 'package:authentication_example/custom_snackbar.dart';
import 'package:authentication_example/home_screen.dart';
import 'package:authentication_example/register_screen.dart';
import 'package:authentication_example/session_data_shared_pre.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();

  ///CREAING INSTANCE OF FIREBASE AUTH

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  bool _showPassword = false;

  void loginFunction() async {
    if (_emailTextEditingController.text.trim().isNotEmpty &&
        _passwordTextEditingController.text.trim().isNotEmpty) {
      try {
        ///SignIn with email and password using firebaseAuth instance
        UserCredential userCredential =
            await _firebaseAuth.signInWithEmailAndPassword(
          email: _emailTextEditingController.text.trim(),
          password: _passwordTextEditingController.text.trim(),
        );
        log("USER CREDENTIALS :$userCredential");

        /// SHARED PREFERENCE - Store Data
        await SessionData.storeSessionData(
            isLogin: true, email: userCredential.user!.email!);
        CustomSnackbar.showCustomSnackbar(
          message: "Login Successfully",
          context: context,
        );

        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) =>
                HomeScreen(email: userCredential.user!.email!)));
      } on FirebaseAuthException catch (error) {
        print("${error.code}");
        print("${error.message}");
        CustomSnackbar.showCustomSnackbar(
          message: error.code,
          context: context,
        );
      }
    } else {
      CustomSnackbar.showCustomSnackbar(
        message: "Please enter valid fields",
        context: context,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Login",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: _emailTextEditingController,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              decoration: const InputDecoration(
                hintText: "Enter your email",
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: _passwordTextEditingController,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              obscureText: _showPassword,
              decoration: InputDecoration(
                  hintText: "Enter your password",
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      _showPassword = !_showPassword;
                      setState(() {});
                    },
                    child: Icon(
                      (_showPassword) ? Icons.visibility_off : Icons.visibility,
                      color: Colors.white,
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: loginFunction,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0)),
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
              child: const Text(
                "Login",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const RegisterScreen();
                },
              ));
            },
            child: const Text(
              "Create new account ? Register",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
