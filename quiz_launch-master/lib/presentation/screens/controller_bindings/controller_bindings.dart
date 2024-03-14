import 'package:get/get.dart';
import 'package:quiz_app/presentation/screens/controller/user_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<UserController>(UserController());
  }
}