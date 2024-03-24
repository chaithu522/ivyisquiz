import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_app/data/app_url.dart';
import 'package:quiz_app/data/models/signup_models.dart';

class SignupController extends GetxController {
  var userList = <SignupModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getSignupUser();
  }

  Future<void> getSignupUser() async {
    final response = await http.post(Uri.parse(AppUrl.signUpURL));
    if (response.statusCode == 201 || response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      userList.value = result.map((e) => SignupModel.fromJson(e)).toList();
      isLoading.value = false;
      update();
    } else {
      Get.snackbar('Error Loading data!',
          'Server responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
    }
  }
}
