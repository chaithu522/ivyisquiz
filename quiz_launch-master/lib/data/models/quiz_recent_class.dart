class QuizRecentClass {
  String? name;
  String? result;

  QuizRecentClass({this.name, this.result});

  QuizRecentClass.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['result'] = this.result;
    return data;
  }
}
