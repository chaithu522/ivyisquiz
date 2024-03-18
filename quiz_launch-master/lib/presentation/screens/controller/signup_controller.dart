import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
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
    const String userUrl = "http://106.51.63.100:8000/register/"; // Endpoint for POST request
    final response = await http.post(Uri.parse(userUrl));
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
