import 'dart:convert';
// import 'dart:developer';

import 'package:api_binding_example/todo_model.dart';
import 'package:http/http.dart' as http;

class ApiController {
  static Future<TodoModel> getDataFromApi() async {
    ///HTTP.GET(URL) REQUIRES URL AND OUR LINK IS IN STRING FORMAT
    ///SO WE PARSE THAT STRING IN URL

    Uri url = Uri.parse("https://dummyjson.com/todos");
    http.Response response = await http.get(url);

    ///MAIN DATA IS ALWAYS IN RESPONSE.BODY WHICH IS IN STRING FORMAT
    ///TO COVERT THAT STRING IN TO JSON FORMAT (I.E MAP:{KEY:VALUE} OR LIST OF MAP)
    ///JSON.DECODE(RESPONSE.BODY) USED
    ///WHICH CONVVERTS STRING INTO JSON OBJECT
    // log(response.body);

    Map<String, dynamic> responseData = json.decode(response.body);
    // log("${responseData["total"]}");

    ///COVERT THE RESPONSE DATA MAP INTO MODEL CLASS
    TodoModel todoModel = TodoModel(responseData);
    return todoModel;
  }
}
