import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/gen/assets.gen.dart';
import 'package:quiz_app/gen/fonts.gen.dart';
import 'package:quiz_app/presentation/screens/multiple_answer/multipleanswertype.dart';
import 'package:quiz_app/presentation/screens/questionanswer/true_or_false_type_constants.dart';
import 'package:quiz_app/presentation/widgets/common_ui_bg.dart';

class TrueOrFalseType extends StatefulWidget {
  const TrueOrFalseType({super.key});

  @override
  State<TrueOrFalseType> createState() => _TrueOrFalseTypeState();
}

class _TrueOrFalseTypeState extends State<TrueOrFalseType> {
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
          SizedBox(height: 10),
          Expanded(
            child: CommonUIBG(
              widget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Center(
                    child: Image.asset(Assets.images.timer4.path),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    child: Image.asset(Assets.images.trueorfalse.path),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(left: 2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            trueorfalsetypeconstants.text1,
                            style: TextStyle(
                              fontFamily: FontFamily.rubik,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colours.textColour,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            trueorfalsetypeconstants.text2,
                            style: TextStyle(
                              fontFamily: FontFamily.rubik,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colours.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            // Get.offAll(()=>MultAnserType());
                          },
                          child: Text(
                            trueorfalsetypeconstants.text3,
                            style: TextStyle(
                              fontFamily: FontFamily.rubik,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colours.CardColour,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(156, 56),
                            primary: Colours.wronganswer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(height: 20, width: 40),
                        ElevatedButton(
                          onPressed: () {
                            // Get.to(()=>MultAnserType());
                          },
                          child: Text(
                            trueorfalsetypeconstants.text4,
                            style: TextStyle(
                              fontFamily: FontFamily.rubik,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colours.CardColour,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(156, 56),
                            primary: Colours.correctanswer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Get.to(() => MultiAnswerType());
                          },
                          child: Text(
                            trueorfalsetypeconstants.text5,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: FontFamily.rubik,
                              color: Colours.CardColour,
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
