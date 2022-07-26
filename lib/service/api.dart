import 'dart:convert';

import 'package:getx_toturial/models/user_res_model.dart';
import 'package:http/http.dart' as http;

class APIService {
  Future<UserResModels> getUser() async {
    var url = Uri.parse('https://reqres.in/api/users?');
    var res = await http.get(url);
    var data = jsonDecode(res.body);
    return UserResModels.fromJson(data);
  }
}
