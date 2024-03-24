import 'dart:convert';

import 'package:quiz_app/data/app_url.dart';
import 'package:http/http.dart' as http;

import 'models/login_model.dart';
import 'models/quiz_get_class.dart';
import 'models/quiz_recent_class.dart';

class ApiService {
  static Future<LoginModel> loginAPI({
    required String email,
    required String password,
  }) async {
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({"email": '$email', "password": "$password"});

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

  static Future<List<QuizGetClass>> quizGetAPI() async {
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(Uri.parse(AppUrl.quizGet), headers: headers);

    var json = jsonDecode(response.body);
    if (response.statusCode == 200) {
      Iterable list = json.decode(response.body);
      return list.map((model) => QuizGetClass.fromJson(model)).toList();
    } else {
      return [];
    }
  }

  static Future<QuizRecentClass> quizRecentQuiz() async {
    var headers = {'Content-Type': 'application/json'};
    var response =
        await http.get(Uri.parse(AppUrl.quizRecentQuiz), headers: headers);
    var json = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return QuizRecentClass.fromJson(json);
    } else {
      return QuizRecentClass.fromJson(json);
    }
  }
}
