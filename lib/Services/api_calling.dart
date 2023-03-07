import 'dart:convert';

import 'package:getx_api_call/Model/user_model.dart';
import 'package:http/http.dart' as http;

class Repository{

  static String url = "https://jsonplaceholder.typicode.com/users";

  static Future<List<UserModel>>? fetchData() async{
    var response = await http.get(Uri.parse(url));
    var decode = jsonDecode(response.body) as List;
    print(decode);
    List<UserModel> temp = decode.map((e) {
      return UserModel.fromJson(e);
    }).toList();
    return temp;
  }
}