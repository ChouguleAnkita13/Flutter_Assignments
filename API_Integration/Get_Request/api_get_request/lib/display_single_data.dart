import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DisplaySingleDataScreen extends StatefulWidget {
  const DisplaySingleDataScreen({super.key});

  @override
  State<DisplaySingleDataScreen> createState() =>
      _DisplaySingleDataScreenState();
}

class _DisplaySingleDataScreenState extends State<DisplaySingleDataScreen> {
  Map singleEmpData = {};

  void getSingleEmployeeData() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/employee/2");

    http.Response response = await http.get(url);

    Map<String, dynamic> responseData = json.decode(response.body);

    setState(() {
      singleEmpData = responseData["data"];
    });

    log("${responseData["data"]}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: singleEmpData.isNotEmpty
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(singleEmpData["employee_name"]),
                  Text("${singleEmpData["employee_salary"]}"),
                  Text("${singleEmpData["employee_age"]}"),
                ],
              )
            : const Center(child: Text("No Data Found")),
        floatingActionButton: FloatingActionButton(
          onPressed: getSingleEmployeeData,
          child: const Icon(Icons.add),
        ));
  }
}
