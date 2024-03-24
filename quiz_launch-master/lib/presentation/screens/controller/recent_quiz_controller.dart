import 'package:get/get.dart';
import 'package:quiz_app/data/api_service.dart';
import 'package:quiz_app/data/models/quiz_recent_class.dart';

class RecentQuizController extends GetxController {
  var quizRecentClass = QuizRecentClass().obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> quizRecentQuiz() async {
    updateLoader(true);
    var response = await ApiService.quizRecentQuiz();
    quizRecentClass.value = response;
    updateLoader(false);
  }

  updateLoader(bool loader) {
    this.isLoading.value = loader;
  }
}
