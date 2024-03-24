import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quiz_app/core/storage_manager/local_storage_constants.dart';
import 'package:quiz_app/data/api_service.dart';
import 'package:quiz_app/presentation/screens/home/home_page.dart';

class OnboardingController extends GetxController {
  Future<void> login({required String email, required String password}) async {
    var loginResponse = await ApiService.loginAPI(email: email, password: password);

    if (loginResponse.status == "200") {

      final box = GetStorage();
      box.write(LocalStorageConstants.sessionManager,true);
      box.write(LocalStorageConstants.userEmail,loginResponse.userEmail);
      Get.offAll(HomePage());
    } else {
      Get.snackbar(
        '',
        'login failed',
      );
    }
  }
}
