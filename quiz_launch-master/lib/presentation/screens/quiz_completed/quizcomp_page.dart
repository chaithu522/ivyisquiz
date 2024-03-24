import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/gen/assets.gen.dart';
import 'package:quiz_app/gen/fonts.gen.dart';
import 'package:quiz_app/presentation/screens/profile/profile_page.dart';
import 'package:quiz_app/presentation/screens/quiz_completed/quizcomp_constants.dart';


class QuizComplete extends StatefulWidget {
  const QuizComplete({Key? key}) : super(key: key);

  @override
  State<QuizComplete> createState() => _QuizCompleteState();
}

class _QuizCompleteState extends State<QuizComplete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          QuizCompleteConstants.appbar1,
          style: TextStyle(
            color: Colours.primaryColor,
            fontFamily: FontFamily.rubik,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        foregroundColor: Colours.CardColour,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colours.CardColour,
          size: 25,
        ),
        backgroundColor: Colours.CardColour,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.cancel,
              color: Colours.primaryColor,
            ),
          ),
        ],
      ),
      backgroundColor: Colours.CardColour,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 318,
            width: 350,
            child: Card(
              color: Colours.onpressedbutton,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 18),
                  Image.asset(
                    Assets.images.quizcompleted.path,
                    width: 214,
                    height: 158,
                  ),
                  SizedBox(height: 10),
                  Text(
                    QuizCompleteConstants.text1,
                    style: TextStyle(
                      color: Colours.CardColour,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      QuizCompleteConstants.text2,
                      style: TextStyle(
                        color: Colours.CardColour,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(237, 56),
                      primary: Colours.homeCard,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10), 
          Container(
            padding: EdgeInsets.only(top: 5, left: 26),
            alignment: Alignment.topLeft, 
            child: Text(
              QuizCompleteConstants.text3,
              style: TextStyle(
                color: Colours.textColour, 
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 5,),
          Image.asset(Assets.images.lineChart.path),
          SizedBox(height: 10),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 5, // Adjust this value to reduce space between columns
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(QuizCompleteConstants.text4,style: TextStyle(
                color: Colours.textColour, 
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),),
              Text(QuizCompleteConstants.text5,  style: TextStyle(
            color: Colours.primaryColor,
            fontFamily: FontFamily.rubik,
            fontSize: 24,
            fontWeight: FontWeight.w500,)
                     
                  ),
                  SizedBox(height: 15,),
                  Text(QuizCompleteConstants.text8,style: TextStyle(
                color: Colours.textColour, 
                fontSize: 12,
                fontWeight: FontWeight.w500,
              )
              
              ),
              Text(QuizCompleteConstants.text10,  style: TextStyle(
            color: Colours.primaryColor,
            fontFamily: FontFamily.rubik,
            fontSize: 24,
            fontWeight: FontWeight.w500,)
                  )],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                                          Text(QuizCompleteConstants.text6,style: TextStyle(
                color: Colours.textColour, 
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),),
              Text(QuizCompleteConstants.text7,  style: TextStyle(
            color: Colours.primaryColor,
            fontFamily: FontFamily.rubik,
            fontSize: 24,
            fontWeight: FontWeight.w500,)
                     
                  ),
                  SizedBox(height: 15,),
                  Text(QuizCompleteConstants.text9,style: TextStyle(
                color: Colours.textColour, 
                fontSize: 12,
                fontWeight: FontWeight.w500,
              )
              
              ),
              Text(QuizCompleteConstants.text11,  style: TextStyle(
            color: Colours.primaryColor,
            fontFamily: FontFamily.rubik,
            fontSize: 24,
            fontWeight: FontWeight.w500,)
                  ),
                   
                    ],
                   
                  ),
                ),
               
               
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25,bottom: 20),
            child: Row(
              children: [
                 Row(
                  
                      children: [
                         SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                          Get.to(()=>(ProfilePage()));
                      },
                      child: Text(
                        QuizCompleteConstants.text12,
                        style: TextStyle(
                          color: Colours.CardColour,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(255, 56),
                        primary: Colours.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(width: 40,),
                    IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: Colours.primaryColor,
              ),
            ), 
              ],
            )
                    ],
                  ),
          ),
   ] ));
  }
}
