import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/gen/assets.gen.dart';
import 'package:quiz_app/gen/fonts.gen.dart';
import 'package:quiz_app/presentation/screens/answer_explanation/answerexp_constants.dart';
import 'package:quiz_app/presentation/screens/live_quiz/livequiz_1.dart';
import 'package:quiz_app/presentation/screens/quiz_completed/quizcomp_page.dart';

class AnwserExpl extends StatefulWidget {
  const AnwserExpl({Key? key}) : super(key: key);

  @override
  State<AnwserExpl> createState() => _AnwserExplState();
}

class _AnwserExplState extends State<AnwserExpl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AnswerConstants.appbar,
          style: TextStyle(
            color: Colours.primaryColor,
            fontFamily: FontFamily.rubik,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colours.CardColour,
        foregroundColor: Colours.primaryColor,
        iconTheme: IconThemeData(
          color: Colours.primaryColor,
          size: 25,
        ),
        actions: [
          SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.cancel_sharp),
          ),
        ],
      ),
      backgroundColor: Colours.CardColour,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 26),
              width: 327,
              height: 224,
              child: Card(
                color: Colours.primaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text(
                        AnswerConstants.text1,
                        style: TextStyle(
                          fontFamily: FontFamily.rubik,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colours.CardColour,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        AnswerConstants.text2,
                        style: TextStyle(
                          fontFamily: FontFamily.rubik,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colours.CardColour,
                        ),
                      ),
                      SizedBox(height: 16),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          width: 295,
                          height: 148,
                          child: Card(
                            color: Colours.onpressedbutton,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(Assets.images.group.path),
                                  SizedBox(width: 15),
                                  Text(
                                    AnswerConstants.text3,
                                    style: TextStyle(
                                      fontFamily: FontFamily.rubik,
                                      fontSize: 16,
                                      color: Colours.CardColour,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 26),
              child: SizedBox(height: 16),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                AnswerConstants.text4,
                style: TextStyle(
                  fontFamily: FontFamily.rubik,
                  fontSize: 18,
                  color: Colours.cardTextColour,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.only(left: 18, right: 8),
              width: 359,
              height: 408, 
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(height: 2,),
                          Image.asset(
                            Assets.images.one.path,
                          ),
                          SizedBox(width: 10, height: 20,),
                          Text(
                            AnswerConstants.cardtext5,
                            style: TextStyle(
                              fontFamily: FontFamily.rubik,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colours.primaryColor,
                            ),
                          ),
                          SizedBox(width: 8),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.info_outline,color: Colours.Orange),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        margin: EdgeInsets.only(left: 44),
                        child: Column(
                          children: [
                            Text(
                              AnswerConstants.cardtext6,
                              style: TextStyle(
                                fontFamily: FontFamily.rubik,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colours.textColour
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(height: 2,),
                          Image.asset(
                            Assets.images.two.path,
                          ),
                          SizedBox(width: 10, height: 20,),
                          Text(
                            AnswerConstants.cardtext7,
                            style: TextStyle(
                              fontFamily: FontFamily.rubik,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colours.primaryColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        margin: EdgeInsets.only(left: 44),
                        child: Column(
                          children: [
                            Text(
                              AnswerConstants.cardtext8,
                              style: TextStyle(
                                fontFamily: FontFamily.rubik,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colours.textColour
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(height: 2,),
                          Image.asset(
                            Assets.images.three.path,
                          ),
                          SizedBox(width: 10, height: 20,),
                          Text(
                            AnswerConstants.cardtext9,
                            style: TextStyle(
                              fontFamily: FontFamily.rubik,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colours.primaryColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        margin: EdgeInsets.only(left: 44),
                        child: Column(
                          children: [
                            Text(
                              AnswerConstants.cardtext10,
                              style: TextStyle(
                                fontFamily: FontFamily.rubik,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colours.textColour
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(height: 2,),
                          Image.asset(
                            Assets.images.four.path,
                          ),
                          SizedBox(width: 10, height: 20,),
                          Text(
                            AnswerConstants.cardtext11,
                            style: TextStyle(
                              fontFamily: FontFamily.rubik,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colours.primaryColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        margin: EdgeInsets.only(left: 44),
                        child: Column(
                          children: [
                            Text(
                              AnswerConstants.cardtext12,
                              style: TextStyle(
                                fontFamily: FontFamily.rubik,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colours.textColour
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 18),
              child: SizedBox(height: 20,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.offAll(()=>Live_quiz());
                  },
                  child: Text(
                    AnswerConstants.cardtext13,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: FontFamily.rubik,
                      color: Colours.CardColour
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(170, 50),
                    primary: Colours.buttonColour,
                    shape: RoundedRectangleBorder( 
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(()=>QuizComplete());
                  },
                  child: Text(
                    AnswerConstants.cardtext14,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: FontFamily.rubik,
                      color: Colours.CardColour
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(170, 50),
                    primary: Colours.buttonColour,
                    shape: RoundedRectangleBorder( 
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 18),
              child: SizedBox(height: 20,),
            ),
          ],
        ),
      ),
    );
  }
}
