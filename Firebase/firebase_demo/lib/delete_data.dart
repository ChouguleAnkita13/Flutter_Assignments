import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DeleteData extends StatefulWidget {
  const DeleteData({super.key});

  @override
  State<DeleteData> createState() => _DeleteDataState();
}

class _DeleteDataState extends State<DeleteData> {
  TextEditingController nameController = TextEditingController();

  Future<void> deleteData(String name) async {
    if (name == "") {
      log("Enter field");
    } else {
      await FirebaseFirestore.instance
          .collection("users")
          .doc(name)
          .delete()
          .then((value) {
        log("Data Deleted");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Delete Data From FireStore"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
              child: TextField(
                controller: nameController,
                decoration:
                    const InputDecoration(hintText: "Enter Name to delete"),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  deleteData(nameController.text);
                  nameController.clear();
                  Navigator.of(context).pop();
                },
                child: const Text("Delete")),
          ],
        ),
      ),
    );
  }
}
