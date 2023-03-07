import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api_call/Services/usercontroller.dart';

void main(){
  runApp( GetMaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX Api Call"),),
      body: Obx(() => ListView.builder(itemCount: userController.userList.length ,itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(radius: 25,backgroundColor: Colors.blueAccent,child: Icon(Icons.person),),
          title: Text(userController.userList[index].name.toString()),
        );
      },),)
    );
  }
}
