import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_app/data/models/addcategaries_models.dart';

class AddCategaryController extends GetxController {
  var userList = <AddCategoryModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getcat();
  }

  Future<void> getcat() async {
    const String userUrl = "http://106.51.63.100:8000/get/";
    final response = await http.get(Uri.parse(userUrl));
    if (response.statusCode == 200) {
  final List result = jsonDecode(response.body);
  userList.value = result.map((e) => AddCategoryModel.fromJson(e)).toList();
  isLoading.value = false;
  update();
} else {
  Get.snackbar('Error Loading data!', 'Server responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
}
  }
}
