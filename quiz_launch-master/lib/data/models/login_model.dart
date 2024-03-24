class LoginModel {
  String? message;
  String? userEmail;
  String? username;
  String? status;

  LoginModel({this.message, this.userEmail, this.username, this.status});

  LoginModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    userEmail = json['user email'];
    username = json['username'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['user email'] = this.userEmail;
    data['username'] = this.username;
    data['status'] = this.status;
    return data;
  }
}
