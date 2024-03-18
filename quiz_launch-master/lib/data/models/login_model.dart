class LoginModel {
  String? error;
  String? status;

  LoginModel({this.error, this.status});

  LoginModel.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['status'] = this.status;
    return data;
  }
}
