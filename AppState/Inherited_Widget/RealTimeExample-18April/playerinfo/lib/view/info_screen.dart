import 'package:flutter/material.dart';

import '../controller/inheritedwidget_controller.dart';
import 'package:playerinfo/view/detail_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _pNameController = TextEditingController();
  final TextEditingController _teamNameController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    PlayerData playerDataObj = PlayerData.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Text(
              "Welcome",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 23,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              child: Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Player Name",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        height: 40,
                        child: TextFormField(
                          controller: _pNameController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Player Name";
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Country",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        height: 40,
                        child: TextFormField(
                          controller: _countryController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Country";
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Team Name",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        height: 40,
                        child: TextFormField(
                          controller: _teamNameController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Team Name";
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            bool isValidate = _formkey.currentState!.validate();
                            if (isValidate) {
                              playerDataObj.player.playerName =
                                  _pNameController.text;
                              playerDataObj.player.country =
                                  _countryController.text;
                              playerDataObj.player.teamName=
                                  _teamNameController.text;

                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const DetailsScreen()));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(300, 40),
                              backgroundColor: Colors.green),
                          child: const Text(
                            "Submit",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white),
                          ))
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
