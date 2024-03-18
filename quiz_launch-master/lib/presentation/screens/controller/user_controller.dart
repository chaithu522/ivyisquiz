import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_app/data/models/user_models.dart';

class UserController extends GetxController {
  var userList = <UserModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getUsers();
  }

  Future<void> getUsers() async {
    const String userUrl = "http://106.51.63.100:8000/login/"; // Endpoint for POST request
    final response = await http.post(Uri.parse(userUrl));
    if (response.statusCode == 201 || response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      userList.value = result.map((e) => UserModel.fromJson(e)).toList();
      isLoading.value = false;
      update();
    } else {
      Get.snackbar('Error Loading data!',
          'Server responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
    }
  }

}