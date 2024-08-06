import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_demo/showdata.dart';
import 'package:flutter/material.dart';

class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController nameController = TextEditingController();
  TextEditingController locController = TextEditingController();

  addData(String name, String location) async {
    if (name == "" && location == "") {
      log("Enter Required fields");
    } else {
      FirebaseFirestore.instance
          .collection("users")
          .doc(name)
          .set({"name": name, "location": location}).then((value) {
        log("Data Inserted");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Data To FireStore"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 30),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(hintText: "Enter Name"),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 30),
              child: TextField(
                controller: locController,
                decoration: const InputDecoration(hintText: "Enter Location"),
              ),
            ),
           
            ElevatedButton(onPressed: () {
              addData(nameController.text, locController.text);
              nameController.clear();
              locController.clear();
              Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ShowData()));
            }, child: const Text("Save Data")),
          ],
        ),
      ),
    );
  }
}
