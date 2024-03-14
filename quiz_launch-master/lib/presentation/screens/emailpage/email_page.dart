import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/gen/fonts.gen.dart';
import 'package:quiz_app/presentation/screens/emailpage/emailpage_constants.dart';
import 'package:quiz_app/presentation/screens/form%20validation/form_validation.dart';
import 'package:quiz_app/presentation/screens/models/signup_models.dart';
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
        child: Container(
          margin: EdgeInsets.only(top: 20, left: 27, right: 27),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                EmailConstraints.text1,
                style: TextStyle(
                  color: Colours.primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: _formKey1,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          validator: Validation1.nameValidation,
                          decoration: InputDecoration(
                            hintText: EmailConstraints.hinttext1,
                            hintStyle: TextStyle(color: Colours.formTextColour),
                            filled: true,
                            fillColor: Colours.CardColour,
                            contentPadding: EdgeInsets.zero,
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
                          validator: Validation3.passwordValidation, // Password validation
                          obscureText: true, // Password field should be obscured
                          decoration: InputDecoration(
                            hintText: 'Password', // Provide appropriate hint text
                            hintStyle: TextStyle(color: Colours.formTextColour),
                            filled: true,
                            fillColor: Colours.CardColour,
                            contentPadding: EdgeInsets.zero,
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
                  fixedSize: Size(370, 50),
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
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your OTP';
                              } else if (value.length != 5) {
                                return 'OTP must be 5 digits';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: EmailConstraints.hinttext2,
                              hintStyle: TextStyle(color: Colours.formTextColour),
                              filled: true,
                              fillColor: Colours.CardColour,
                              contentPadding: EdgeInsets.zero,
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
                    ElevatedButton(
                      onPressed: () async {
                        if (_formKey3.currentState!.validate()
                        ) 
                        {
                          final response = await postOTP('12345');
                          if (response.statusCode == 200)
                           {
                            Get.to(OnBoardingPage());
                          } else {
                            Get.snackbar('Error', 'OTP verification failed',);
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
                        fixedSize: Size(370, 50),
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
    );
  }

  Future<int> getSignupUser() async {
    const String userUrl = "http://106.51.63.100:8000/register/";

    final Map<String, dynamic> requestBody = {
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
    print('${response.statusCode}' == '201');
    if ('${response.statusCode}' == '201') {
   if ('${response.statusCode}' == '201') {
  final dynamic responseBody = jsonDecode(response.body);
  final String message = responseBody['message'];
  Get.snackbar('Success', message);
} else {
  Get.snackbar('Error', 'Server responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
}

    } 
    else {
      Get.snackbar('Error Loading data!',
          'Server responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
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
