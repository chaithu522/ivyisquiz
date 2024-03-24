import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/core/storage_manager/local_storage_constants.dart';
import 'package:quiz_app/gen/assets.gen.dart';
import 'package:quiz_app/gen/fonts.gen.dart';
import 'package:quiz_app/presentation/screens/home/home_page.dart';

import '../onboarding/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    navigationOnBoarding();
  }

  Future<void> navigationOnBoarding() async {
    await Future.delayed(Duration(milliseconds: 4500), () {});

    final box = GetStorage();
    bool check = box.read(LocalStorageConstants.sessionManager) ?? false;

    if (check == true) {
      Get.offAll(HomePage());
    } else {
      Get.offAll(OnBoardingPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colours.primaryColor,
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            child: Image.asset(Assets.images.appicon.path),
            height: 150,
            width: 150,
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
            child: Text('Quizy',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                    fontFamily: FontFamily.nunito,
                    color: Colours.CardColour)),
          ),
        ])));
  }
}
