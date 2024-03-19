import 'package:get/get.dart';
import 'package:quiz_app/data/api_service.dart';
import 'package:quiz_app/presentation/screens/home/home_page.dart';

class OnboardingController extends GetxController {


  Future<void> login({required String email, required String password}) async {
    //loading.value = true;
    var loginResponse =
        await ApiService.loginAPI(email: email, password: password);

    if(loginResponse.status == "200")
      {
        Get.to(HomePage());
      }
      else
        {

          Get.snackbar(
            '',
            'login failed',
          );
        }

  }
}
