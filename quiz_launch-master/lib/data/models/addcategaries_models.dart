class AddCategoryModel {
  int? id;
  String? category;
  String? subCategory;
  int? noOfQuizzes;

  AddCategoryModel({
    this.id,
    this.category,
    this.subCategory,
    this.noOfQuizzes,
  });

  AddCategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    category = json['Category'] as String?;
    subCategory = json['Sub_Category'] as String?;
    noOfQuizzes = json['No_of_Quizzes'] as int?;
    print("iam in addcategorymodel ${id},${category}");

    // Additional error handling
    if (id == null || category == null || subCategory == null || noOfQuizzes == null) {
      throw FormatException('Failed to parse Addcategorymodel from JSON: $json');
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Category'] = this.category;
    data['Sub_Category'] = this.subCategory;
    data['No_of_Quizzes'] = this.noOfQuizzes;
    print(data);
    return data;
  }
}

