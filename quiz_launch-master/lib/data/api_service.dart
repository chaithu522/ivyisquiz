import 'dart:convert';

import 'package:quiz_app/data/app_url.dart';
import 'package:quiz_app/data/models/login_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<LoginModel> loginAPI({
    required String email,
    required String password,
  }) async {
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({"username": '$email', "password": "$password"});

    var response = await http.post(Uri.parse(AppUrl.loginURL),
        body: body, headers: headers);

    var json = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return LoginModel.fromJson(json);
    } else {
      return LoginModel.fromJson(json);
    }
  }

  static Future<LoginModel> signupApi({
    required String username,
    required String password,
    required String email,
  }) async {
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode(
        {"username": '$username', "password": "$password", "email": "$email"});
    var response = await http.post(Uri.parse(AppUrl.signUpURL),
        body: body, headers: headers);
    var json = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return LoginModel.fromJson(json);
    } else {
      return LoginModel.fromJson(json);
    }
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
