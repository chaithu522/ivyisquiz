import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/gen/assets.gen.dart';
import 'package:quiz_app/gen/fonts.gen.dart';
import 'package:quiz_app/presentation/screens/answer%20explanation/answer_exp.dart';
import 'package:quiz_app/presentation/screens/multiple_answer/multilpleanserconstant.dart';
import 'package:quiz_app/presentation/widgets/common_ui_bg.dart';

class MultiAnswerType extends StatefulWidget {
  const MultiAnswerType({super.key});

  @override
  State<MultiAnswerType> createState() => _MultiAnswerTypeState();
}

class _MultiAnswerTypeState extends State<MultiAnswerType> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colours.primaryColor,
        foregroundColor: Colours.CardColour,
      ),
      backgroundColor: Colours.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(Assets.images.participant.path),
              Image.asset(Assets.images.progress.path),
              Image.asset(Assets.images.points.path),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: CommonUIBG(
              widget:
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.only(left: 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Multipleanswertype.text1,
                          style: TextStyle(
                              fontFamily: FontFamily.rubik,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colours.textColour),
                        ),
                        SizedBox(height: 10), 
                        Text(
                          Multipleanswertype.text2,
                          style: TextStyle(
                              fontFamily: FontFamily.rubik,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colours.primaryColor),
                        ),
                        SizedBox(height: 30), 
                        ElevatedButton(
                          onPressed: () {
                            // Get.to(()=>ReviewAnswer());
                          },
                          child: Row(
                            children: [
                              Checkbox(
                                value: isChecked1,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked1 = value!;
                                  });
                                },
                              ),
                              Text(
                                Multipleanswertype.text3,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: FontFamily.rubik,
                                  color: Colours.primaryColor,
                                ),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(327, 56),
                            primary: null,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {
                            // Get.to(()=>ReviewAnswer());
                          },
                          child: Row(
                            children: [
                              Checkbox(
                                value: isChecked2,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked2 = value!;
                                  });
                                },
                              ),
                              Text(
                                Multipleanswertype.text4,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: FontFamily.rubik,
                                  color: Colours.primaryColor,
                                ),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(327, 56),
                            primary: null,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {
                            // Get.to(()=>ReviewAnswer());
                          },
                          child: Row(
                            children: [
                              Checkbox(
                                value: isChecked3,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked3 = value!;
                                  });
                                },
                              ),
                              Text(
                                Multipleanswertype.text5,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: FontFamily.rubik,
                                  color: Colours.primaryColor,
                                ),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(327, 56),
                            primary: null,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {
                            // Get.offAll(()=>QuizComplete());
                          },
                          child: Row(
                            children: [
                              Checkbox(
                                value: isChecked4,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked4 = value!;
                                  });
                                },
                              ),
                              Text(
                                Multipleanswertype.text6,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: FontFamily.rubik,
                                  color: Colours.primaryColor,
                                ),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(327, 56),
                            primary: null,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                         SizedBox(height: 20,),
                         ElevatedButton(
                        onPressed: () {
                        Get.to(()=>AnswerExpl());
                       },
              
                          child: Text(
                          Multipleanswertype.text7,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: FontFamily.rubik,
                              color: Colours.CardColour
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(327, 56),
                            primary: Colours.primaryColor,
                            shape: RoundedRectangleBorder( 
                              borderRadius: BorderRadius.circular(25),
                              side: BorderSide(color: Colors.grey),
                              
                            ),
                            
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




   