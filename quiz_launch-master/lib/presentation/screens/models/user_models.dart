class LoginModel {
  String? message;
  String? userEmail;

  LoginModel({this.message, this.userEmail});

  LoginModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    userEmail = json['user email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['user email'] = this.userEmail;
    return data;
  }
}
