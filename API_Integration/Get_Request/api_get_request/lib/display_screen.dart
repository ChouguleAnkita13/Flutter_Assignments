import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({super.key});

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  List<dynamic> empData = [];
  Map singleEmpData = {};

  void getEmployeeData() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/employees");

    http.Response response = await http.get(url);

    Map<String, dynamic> responseData = json.decode(response.body);

    // log(responseData["status"]);
    // log(responseData["message"]);
    // log("${responseData["data"]}");

    setState(() {
      empData = responseData["data"];
    });

    log("$empData");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: empData.length,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(empData[index]["employee_name"]),
                  Text("${empData[index]["employee_salary"]}"),
                  Text("${empData[index]["employee_age"]}"),
                ],
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: getEmployeeData,
          child: const Icon(Icons.add),
        ));
  }
}
