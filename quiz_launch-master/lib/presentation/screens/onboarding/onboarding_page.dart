import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/gen/assets.gen.dart';
import 'package:quiz_app/gen/fonts.gen.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_app/presentation/screens/form%20validation/form_validation.dart';


import 'package:quiz_app/presentation/screens/home/home_page.dart';
import 'package:quiz_app/presentation/screens/models/user_models.dart';
import 'package:quiz_app/presentation/screens/onboarding/onboarding_constants.dart';
import 'package:quiz_app/presentation/screens/signup/signup_page.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final _formKey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  var userList = <LoginModel>[].obs;
  var isLoading = true.obs;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.primaryColor,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Assets.images.illustration.path),
                SizedBox(height: 10),
                Container(
                  height: 494,
                  width: 343,
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Container(
                          margin: EdgeInsets.only(left: 24),
                          child: Text(
                            OnboardingConstants.title,
                            style: TextStyle(
                              fontFamily: FontFamily.rubik,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colours.cardTextColour,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          margin: EdgeInsets.only(top: 18, left: 27, right: 27),
                          child: Text(
                            OnboardingConstants.text1,
                            style: TextStyle(
                              color: Colours.primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          width: 311,
                          height: 76,
                          child: Card(
                            elevation: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Form(
                                key: _formKey1,
                                child: TextFormField(
                                  validator: Validation1.nameValidation,
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    hintText: OnboardingConstants.hinttext1,
                                    hintStyle: TextStyle(
                                        color: Colours.formTextColour),
                                    filled: true,
                                    fillColor: Colours.CardColour,
                                    contentPadding: EdgeInsets.zero,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15)),
                                      borderSide: BorderSide.none,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.email_outlined,
                                      color: Colours.primaryColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 27, right: 27),
                          child: Text(
                            OnboardingConstants.text2,
                            style: TextStyle(
                              color: Colours.primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          margin: EdgeInsets.only(left: 18, right: 20),
                          width: 311,
                          height: 76,
                          child: Card(
                            elevation: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Form(
                                key: _formKey2,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your OTP';
                                    } else if (value.length != 5) {
                                      return 'OTP must be 5 digits';
                                    }
                                    return null;
                                  },
                                  controller: _passwordController,
                                  decoration: InputDecoration(
                                    hintText: OnboardingConstants.hinttext2,
                                    hintStyle: TextStyle(
                                        color: Colours.formTextColour),
                                    filled: true,
                                    fillColor: Colours.CardColour,
                                    contentPadding: EdgeInsets.zero,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15)),
                                      borderSide: BorderSide.none,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.message_outlined,
                                      color: Colours.primaryColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 18,
                              ),
                              ElevatedButton(
                                onPressed: () async {
                                  if (_formKey1.currentState!.validate() &&
                                      _formKey2.currentState!.validate()) {
                                    final response = await getUsers();
                                    if (response == 200 || response == 201) {
                                      Get.to(HomePage());
                                    }
                                  }
                                },
                                child: Text(
                                  OnboardingConstants.elevatedbutton,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: FontFamily.rubik,
                                    color: Colours.CardColour,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(300, 56),
                                  primary: Colours.buttonColour,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 2,
                                      width: 0,
                                    ),
                                    Text(
                                      OnboardingConstants.text,
                                      style: TextStyle(
                                          color: Colours.textColour,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: FontFamily.rubik,
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 2,
                                      width: 0,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Get.to(SignUpPage());
                                      },
                                      child: Text(
                                        OnboardingConstants.textbutton,
                                        style: TextStyle(
                                            color: Colours.buttonColour,
                                            fontFamily: FontFamily.rubik,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      style: TextButton.styleFrom(
                                          primary: Colours.textColour),
                                    )
                                  ])
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<int> getUsers() async {
    const String userUrl = "http://106.51.63.100:8000/login/";

    final Map<String, dynamic> requestBody = {
      'email': "",
      'password': '',
    };

    requestBody['email'] = _emailController.text;
    requestBody['password'] = _passwordController.text;

    final response = await http.post(
      Uri.parse(userUrl),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(requestBody),
    );

    print('Status Code: ${response.statusCode}''message:${response.body}');
if (response.statusCode == 201 || response.statusCode == 200) {
  final dynamic responseBody = jsonDecode(response.body);
  if (responseBody != null && responseBody['data'] != null) {
    final List result = responseBody['data'];
    userList.value = result.map((e) => LoginModel.fromJson(e)).toList();
    isLoading.value = false;
    print(userList.value.toString());
  } else {
    Get.snackbar('user not exist', 'Data format error');
  }
} else {
  Get.snackbar('Error Loading data!',
      'Server responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
}


    return response.statusCode;
  }
}
