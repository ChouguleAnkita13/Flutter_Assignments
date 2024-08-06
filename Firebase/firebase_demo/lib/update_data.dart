import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UpdateData extends StatefulWidget {
  const UpdateData({super.key});

  @override
  State<UpdateData> createState() => _UpdateDataState();
}

class _UpdateDataState extends State<UpdateData> {
  TextEditingController nameController = TextEditingController();

  TextEditingController updateNameController = TextEditingController();
  TextEditingController updateLocController = TextEditingController();

  Future<void> updateData(String name,String updatedName,String updatedLoc) async {
    if (name == "" ) {
      log("Enter Required fields you want to");
    } else {
      FirebaseFirestore.instance
          .collection("users")
          .doc(name)
          .set({"name": updatedName,"location":updatedLoc}).then((value) {
        log("Data Updated ");
      }).onError((error,stackTrace){
        log("$error");
      });
    }
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update Data To FireStore"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 30),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(hintText: "Enter Name you want to update"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 30),
              child: TextField(
                controller: updateNameController,
                decoration: const InputDecoration(hintText: "Enter Name to update"),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 30),
              child: TextField(
                controller: updateLocController,
                decoration: const InputDecoration(hintText: "Enter Location to update"),
              ),
            ),
           
            ElevatedButton(onPressed: () {
              updateData(nameController.text,updateNameController.text, updateLocController.text);
              nameController.clear();
              updateNameController.clear();

              updateLocController.clear();
               Navigator.of(context).pop();
            }, child: const Text("Update")),
          ],
        ),
      ),
    );
  }
}
