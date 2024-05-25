import 'dart:developer';

import 'package:http/http.dart' as http;

void postEmployeeData()async {
  Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/create");

  Map<String, dynamic> mapData = {
    "name": "Tej",
    "salary": "40000",
    "age": "24",
  };

  http.Response response=await http.post(url,body:mapData);
  log(response.body);
}
