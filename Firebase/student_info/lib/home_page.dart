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
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Please fill the required fields"),
        backgroundColor: Color.fromARGB(255, 235, 93, 93),
      ));
    }
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
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 300,
                alignment: Alignment.center,
                color: Colors.green,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: const Text("Get Data"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 300,
                alignment: Alignment.center,
                color: Colors.green,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: const Text("Update Data"),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: studList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
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
                          ],
                        ),
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
