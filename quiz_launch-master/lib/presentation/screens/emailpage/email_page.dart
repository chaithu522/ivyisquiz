import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/core/form_validation/form_validation.dart';
import 'package:quiz_app/data/models/signup_models.dart';
import 'package:quiz_app/gen/fonts.gen.dart';
import 'package:quiz_app/presentation/screens/emailpage/emailpage_constants.dart';
import 'package:quiz_app/presentation/screens/onboarding/onboarding_page.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({Key? key});

  @override
  State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  var userList = <SignupModel>[].obs;
  var isLoading = true.obs;
  final _formKey1 = GlobalKey<FormState>(); // Key for the first form
  final _formKey3 = GlobalKey<FormState>(); // Key for the OTP form
  bool _showOtpField = false;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          EmailConstraints.appBarTitle,
          style: TextStyle(
            color: Colours.cardTextColour,
            fontFamily: FontFamily.rubik,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        foregroundColor: Colours.cardTextColour,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colours.cardTextColour,
          size: 25,
        ),
        backgroundColor: Colours.secondaryColour,
      ),
      backgroundColor: Colours.secondaryColour,
      body: SingleChildScrollView(
       child: Center(
        child: Container(
          margin: EdgeInsets.only(top: 10, left: 27, right: 27),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(top: 10, left: 7, right: 7),
                child: Form(
                  key: _formKey1,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _nameController,
                        validator: FormValidation.nameValidation,
                        decoration: InputDecoration(
                          hintText: EmailConstraints.namehinttext,
                          hintStyle: TextStyle(color: Colours.formTextColour),
                          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 25), // Increase padding
                          filled: true,
                          fillColor: Colours.CardColour,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Colours.primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _emailController,
                        validator: FormValidation.nameValidation,
                        decoration: InputDecoration(
                          hintText: EmailConstraints.hinttext1,
                          hintStyle: TextStyle(color: Colours.formTextColour),
                          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 25), // Increase padding
                          filled: true,
                          fillColor: Colours.CardColour,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colours.primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _passwordController,
                        validator: FormValidation.passwordValidation,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: EmailConstraints.passwordtext,
                          hintStyle: TextStyle(color: Colours.formTextColour),
                          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 25), // Increase padding
                          filled: true,
                          fillColor: Colours.CardColour,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Colours.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey1.currentState!.validate()) {
                    final signUpStatusCode = await getSignupUser();
                    if (mounted) { // Check if the widget is still mounted
                      setState(() {
                        _showOtpField = true;
                      });
                    }
                  }
                },
                child: Text(
                  EmailConstraints.buttomText,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: FontFamily.rubik,
                    color: Colours.CardColour,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(360, 60),
                  primary: Colours.buttonColour,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(height: 30),
              if (_showOtpField)
                Column(
                  children: [
                    Text(
                      EmailConstraints.text2,
                      style: TextStyle(
                        color: Colours.cardTextColour,
                        fontSize: 24,
                        fontFamily: FontFamily.rubik,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    Card(
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Form(
                          key: _formKey3,
                          child: TextFormField(
                            controller: _otpController,
                            keyboardType: TextInputType.number,
                               validator: FormValidation.otpValidation,
                               obscureText: true,
                            decoration: InputDecoration(
                              hintText: EmailConstraints.hinttext2,
                              hintStyle: TextStyle(color: Colours.formTextColour),
                             
                              contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 25), // Increase padding
                              filled: true,
                              fillColor: Colours.CardColour,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15)),
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
                    SizedBox(height: 20), // Added SizedBox for spacing
                    ElevatedButton(
                      onPressed: () async {
                        if (_formKey3.currentState!.validate()) {
                          final response = await postOTP('12345');
                          if (response.statusCode == 200) {
                            Get.to(OnBoardingPage());
                          } else {
                            Get.snackbar('Error', 'OTP verification failed');
                          }
                        }
                      },
                      child: Text(
                        EmailConstraints.SubmitButton,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: FontFamily.rubik,
                          color: Colours.CardColour,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(360, 60),
                        primary: Colours.buttonColour,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    ),
  );
}


  Future<int> getSignupUser() async {
    const String userUrl = "http://106.51.63.100:8000/register/";

    final Map<String, dynamic> requestBody = {
      'name': _nameController.text, // Add name field
      'email': _emailController.text,
      'password': "admin"
    };

    final response = await http.post(
      Uri.parse(userUrl),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(requestBody),
    );

    print('Status Code: ${response.statusCode}''message:${response.body}');
    if (response.statusCode == 201) {
      final dynamic responseBody = jsonDecode(response.body);
      final String message = responseBody['message'];
      Get.snackbar('Success', message);
    } else {
      Get.snackbar('Error', 'Server responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
    }

    return response.statusCode;
  }

  static Future<http.Response> postOTP(String otp) async {
    // Simulating the postOTP function without actually calling an endpoint
    print('Simulated OTP verification for OTP: $otp');
    return Future.delayed(Duration(seconds: 2), () {
      // Simulate successful response for demonstration
      return http.Response('{"status": "success"}', 200);
    });
  }
}
