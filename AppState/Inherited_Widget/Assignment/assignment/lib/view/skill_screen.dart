import 'package:flutter/material.dart';

class SkillScreen extends StatefulWidget {
  const SkillScreen({super.key});

  @override
  State<SkillScreen> createState() => _SkillScreenState();
}
s
class _SkillScreenState extends State<SkillScreen> {
  List skillList = [];
  TextEditingController skillController = TextEditingController();

  final GlobalKey<FormFieldState> _skillkey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Text(
              "Employee Skills",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 23,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 40,
              child: TextFormField(
                key: _skillkey,
                controller: skillController,
                decoration: const InputDecoration(
                    hintText: "Enter Skills",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter Skills";
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  bool isValidate = _skillkey.currentState!.validate();
                  if (isValidate) {
                    setState(() {
                      skillList.add(skillController.text);
                    });
                  }
                  skillController.clear();
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 40),
                    backgroundColor: Colors.green),
                child: const Text(
                  "Add",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white),
                )),
            const SizedBox(
              height: 40,
            ),
            ListView.builder(
              shrinkWrap: true,
                itemCount: skillList.length,
                itemBuilder: (context, index) {
                  return Container(
                      // width: 300,
                      height: 40,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(bottom: 5,top: 5),
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.grey))),
                      child: Text(
                        skillList[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.black),
                      ));
                })
          ],
        ),
      ),
    );
  }
}
