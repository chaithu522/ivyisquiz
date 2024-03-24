import 'package:get/get.dart';
import 'package:quiz_app/presentation/screens/controller/add_categegory_controller.dart';
import 'package:quiz_app/presentation/screens/controller/onboarding_controller.dart';
import 'package:quiz_app/presentation/screens/controller/recent_quiz_controller.dart';
import 'package:quiz_app/presentation/screens/controller/signup_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<QuizGetController>(QuizGetController());
    Get.put<RecentQuizController>(RecentQuizController());
    Get.put<OnboardingController>(OnboardingController());
    Get.put<SignupController>(SignupController());
  }
}
