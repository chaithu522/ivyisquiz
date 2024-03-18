import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_app/data/models/recentquiz_models.dart';



class RecentQuizController extends GetxController {
  var userList = <RecentQuizModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getrecent();
  }

  Future<void> getrecent() async {
    const String userUrl = "http://106.51.63.100:8000/quiz/";
    final response = await http.get(Uri.parse(userUrl));
  
      print("hello");
    if (response.statusCode == 200) {
  final List result = jsonDecode(response.body);
  userList.value = result.map((e) => RecentQuizModel.fromJson(e)).toList();
  isLoading.value = false;

  update();
} else {
  Get.snackbar('Error Loading data!', 'Server responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
}
  }
}
