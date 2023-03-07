import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:getx_api_call/Model/user_model.dart';
import 'package:getx_api_call/Services/api_calling.dart';

class UserController extends GetxController {
  var userList = <UserModel>[].obs;

  @override
  void onInit() {
    showAllUsers();
    super.onInit();
  }

  showAllUsers() async {
    var data = await Repository.fetchData();
    if (data != null) {
      userList.value = data;
    }
  }
}
