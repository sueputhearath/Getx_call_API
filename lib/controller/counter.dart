import 'dart:convert';

import 'package:get/state_manager.dart';
import 'package:getx_toturial/service/api.dart';

import '../models/user_res_model.dart';

class CounterController extends GetxController {
  APIService api = APIService();
  // RxInt counter = RxInt(0);

  RxList<Data> lstuser = RxList();

  // void increasment() {
  //   counter++;
  //   print(counter);
  // }

  @override
  void onInit() async {
    getAllUser();
    super.onInit();
  }

  getAllUser() async {
    final res = await api.getUser();
    lstuser.value = res.data!;
    print(jsonEncode(res));
  }
}
