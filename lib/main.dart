import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_toturial/controller/counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GetX'),
          centerTitle: true,
        ),
        body: Obx(
          () => ListView.builder(
              itemCount: controller.lstuser.value.length,
              itemBuilder: (context, index) {
                return Card(
                    elevation: 1,
                    child: ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              controller.lstuser[index].avatar.toString())),
                      title:
                          Text(controller.lstuser[index].firstName.toString()),
                      subtitle:
                          Text(controller.lstuser[index].email.toString()),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ));
              }),
        ));
  }
}
