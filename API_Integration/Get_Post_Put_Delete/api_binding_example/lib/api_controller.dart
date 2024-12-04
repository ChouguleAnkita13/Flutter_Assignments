import 'dart:convert';
import 'dart:developer';
import 'package:api_binding_example/todo_model.dart';
import 'package:http/http.dart' as http;

class ApiController {
  static Future<TodoModel> getDataFromApi() async {
    try {
      ///HTTP.GET(URL) REQUIRES URL AND OUR LINK IS IN STRING FORMAT
      ///SO WE PARSE THAT STRING IN URL
      /// PARSE THE STRING URL INTO URI FORMAT FOR HTTP GET REQUEST
      Uri url = Uri.parse("https://dummyjson.com/todos");
      http.Response response = await http.get(url);

      /// CHECK IF THE REQUEST WAS SUCCESSFUL
      if (response.statusCode == 200) {
        ///MAIN DATA IS ALWAYS IN RESPONSE.BODY WHICH IS IN STRING FORMAT
        ///TO COVERT THAT STRING IN TO JSON FORMAT (I.E MAP:{KEY:VALUE} OR LIST OF MAP) JSON.DECODE(RESPONSE.BODY) USED
        ///WHICH CONVERTS STRING INTO JSON OBJECT

        // log(response.body);

        /// CONVERT RESPONSE.BODY (STRING) INTO JSON FORMAT
        Map<String, dynamic> responseData = json.decode(response.body);

        /// CONVERT THE JSON RESPONSE MAP INTO A TODOMODEL INSTANCE
        TodoModel todoModel = TodoModel(responseData);
        return todoModel;
      } else {
        /// THROW AN EXCEPTION IF STATUS CODE IS NOT SUCCESSFUL (200)
        throw Exception("Failed to load data: ${response.statusCode}");
      }
    } catch (error) {
      /// LOG THE ERROR IF AN EXCEPTION OCCURS
      log("Error fetching data: $error");

      /// RETURN A DEFAULT OR EMPTY TODOMODEL IN CASE OF AN ERROR
      return TodoModel({});
    }
  }

  static Future<void> postData() async {
    try {
      Uri url = Uri.parse("https://dummyjson.com/todos/add");
      Map<String, dynamic> mapData = {
        'todo': 'Use DummyJSON in the project',
        'completed': false,
        'userId': 5,
      };
      http.Response responseData = await http.post(url,
          body: json.encode(mapData),
          headers: {'Content-Type': 'application/json'});
      print(responseData.statusCode);
      print(responseData.body);
    } catch (error) {
      print(error);
    }
  }
}
