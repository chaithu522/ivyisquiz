import 'package:get/get.dart';
import 'package:quiz_app/data/api_service.dart';
import 'package:quiz_app/data/models/quiz_get_class.dart';

class QuizGetController extends GetxController {
  var quizGetList = <QuizGetClass>[].obs;
  var isLoading = false.obs;

  void updateLoader(bool loader) {
    this.isLoading.value = loader;
  }

  Future<void> getQuiz() async {
    updateLoader(true);
    final response = await ApiService.quizGetAPI();
    this.quizGetList.value = response;
    updateLoader(false);
  }
}
