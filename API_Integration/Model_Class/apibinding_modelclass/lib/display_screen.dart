import 'dart:convert';
// import 'dart:developer';

import 'package:apibinding_modelclass/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({super.key});

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  List<Data> empData = [];

  void getEmployeeData() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/employees");

    http.Response response = await http.get(url);

    Map<String, dynamic> responseData = json.decode(response.body);

    // log(responseData["status"]);
    // log(responseData["message"]);
    // log("${responseData["data"]}");

    EmployeeModel empModel=EmployeeModel(responseData);

    setState(() {
      empData = empModel.data!;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: empData.length,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("${empData[index].empId}"),
                  Text(empData[index].empName!),
                  Text("${empData[index].empSal}"),
                  Text("${empData[index].empAge}"),
                ],
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: getEmployeeData,
          child: const Icon(Icons.add),
        ));
  }
}
