import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class ApiController {
  static Future<Map<String, dynamic>> getDataFromApi() async {
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
    return responseData;
    // log("${responseData["total"]}");
  }
}
