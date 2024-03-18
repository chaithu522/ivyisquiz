import 'package:get/get.dart';
import 'package:quiz_app/presentation/screens/controller/addcategegory_controller.dart';
import 'package:quiz_app/presentation/screens/controller/recentquiz_controller.dart';
// import 'package:quiz_app/presentation/screens/controller/user_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<AddCategaryController>(AddCategaryController());
      Get.put<RecentQuizController>(RecentQuizController());
  }
}