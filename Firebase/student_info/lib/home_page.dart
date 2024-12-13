import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:student_info/student_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController clgController = TextEditingController();
  List<StudentModel> studList = [];
  @override
  void initState() {
    super.initState();
    getDataFromFirebase();
  }

  void addDataToFirebase() {
    if (nameController.text.trim().isNotEmpty &&
        clgController.text.trim().isNotEmpty) {
      Map<String, dynamic> data = {
        "name": nameController.text,
        "college": clgController.text
      };
      FirebaseFirestore.instance.collection("Incubators").add(data);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Data added"),
        backgroundColor: Colors.green,
      ));
      nameController.clear();
      clgController.clear();
      getDataFromFirebase();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Please fill the required fields"),
        backgroundColor: Color.fromARGB(255, 235, 93, 93),
      ));
    }
  }

  void getDataFromFirebase() async {
    QuerySnapshot<Map<String, dynamic>> response =
        await FirebaseFirestore.instance.collection("Incubators").get();
    // print(response.docs[1]);
    studList.clear();
    for (var value in response.docs) {
      log(value.id);
      studList.add(StudentModel(
          name: value["name"], clgName: value["college"], id: value.id));
    }
    setState(() {});
  }

  void deleteDataFromFirebase(StudentModel studObj) {
    FirebaseFirestore.instance
        .collection("Incubators")
        .doc(studObj.id)
        .delete();
    studList.remove(studObj);
    setState(() {});
  }

  void updateDataFromFirebase(StudentModel studObj) {
    FirebaseFirestore.instance
        .collection("Incubators")
        .doc(studObj.id)
        .set({"name": nameController.text, "college": clgController.text});
    getDataFromFirebase();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Enter Name"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: clgController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Enter College Name"),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                addDataToFirebase();
              },
              child: Container(
                width: 300,
                alignment: Alignment.center,
                color: Colors.green,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: const Text("Add Data"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: studList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      width: 300,
                      alignment: Alignment.center,
                      color: Colors.grey[400],
                      child: Column(
                        children: [
                          Text(studList[index].name),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(studList[index].clgName),
                          Row(children: [
                            GestureDetector(
                                onTap: () {
                                  deleteDataFromFirebase(studList[index]);
                                },
                                child: const Icon(Icons.delete)),
                            GestureDetector(
                                onTap: () {
                                  updateDataFromFirebase(studList[index]);
                                },
                                child: const Icon(Icons.edit))
                          ])
                        ],
                      ),
                    );
                  }),
            )
          ]),
        ),
      ),
    );
  }
}
