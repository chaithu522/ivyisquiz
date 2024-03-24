class QuizGetClass {
  int? id;
  String? category;
  String? subCategory;
  int? noOfQuizzes;

  QuizGetClass({this.id, this.category, this.subCategory, this.noOfQuizzes});

  QuizGetClass.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category = json['Category'];
    subCategory = json['Sub_Category'];
    noOfQuizzes = json['No_of_Quizzes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Category'] = this.category;
    data['Sub_Category'] = this.subCategory;
    data['No_of_Quizzes'] = this.noOfQuizzes;
    return data;
  }
}
