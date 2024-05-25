import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

void postEmployeeData() async {
  Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/create");

  Map<String, dynamic> mapData = {
    "name": "Tej",
    "salary": "40000",
    "age": "24",
  };

  http.Response response = await http.post(url, body: mapData);
  log(response.body);
}

void updateEmployeeData() async {
  Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/update/21");

  Map<String, dynamic> mapData = {
    "name": "Teja Patil",
    "salary": "50000",
    "age": "23",
  };

  http.Response response = await http.put(url, body: mapData);
  log(response.body);

  Map<String, dynamic> responseData = json.decode(response.body);
  log(responseData["message"]);
  log(responseData["status"]);
}

void deleteEmployeeData() async {
  Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/delete/2");

  http.Response response = await http.delete(url);
  log(response.body);

  Map<String, dynamic> responseData = json.decode(response.body);
  log(responseData["message"]);
  log(responseData["status"]);
}
