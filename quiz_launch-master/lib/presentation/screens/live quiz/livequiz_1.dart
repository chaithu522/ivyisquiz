import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/gen/assets.gen.dart';
import 'package:quiz_app/gen/fonts.gen.dart';
import 'package:quiz_app/presentation/screens/live%20quiz/livequiz_constants.dart';
import 'package:quiz_app/presentation/screens/questionanswer/trueorfalse.dart';
import 'package:quiz_app/presentation/widgets/common_ui_bg.dart';

class Live_quiz extends StatefulWidget {
  const Live_quiz({super.key});

  @override
  State<Live_quiz> createState() => _Live_quizState();
}

class _Live_quizState extends State<Live_quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colours.primaryColor,
      ),
      backgroundColor: Colours.primaryColor,
      body: 
      // SingleChildScrollView(
         Column(
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
            SizedBox(height: 10,),
            Expanded(
              child: CommonUIBG(
                widget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Center( 
                      child: Image.asset(Assets.images.timer.path),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Text(Livequizconstrants.text1,style:TextStyle(fontFamily: FontFamily.rubik,fontSize: 14,fontWeight: FontWeight.w500,color: Colours.textColour),),
                             SizedBox(height: 10,),
                          Text(Livequizconstrants.text2,style:TextStyle(fontFamily: FontFamily.rubik,fontSize: 20,fontWeight: FontWeight.w500,color: Colours.primaryColor),),
                          Container
                          
                 (
                  margin: EdgeInsets.only(left:2),
                  child: SizedBox(height: 20,)),
                        ElevatedButton(
                        onPressed: () {
                        // Get.to(()=>ReviewAnswer());
                       },
              
                          child: Text(
                          Livequizconstrants.text3,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: FontFamily.rubik,
                              color: Colours.primaryColor
                            ),
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
                        // Get.to(()=>ReviewAnswer());
                       },
              
                          child: Text(
                          Livequizconstrants.text4,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: FontFamily.rubik,
                              color: Colours.primaryColor
                            ),
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
                        // Get.to(()=>ReviewAnswer());
                       },
              
                          child: Text(
                          Livequizconstrants.text5,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: FontFamily.rubik,
                              color: Colours.primaryColor
                            ),
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
                        // Get.offAll(()=>AnwserExpl());
                       },
              
                          child: Text(
                          Livequizconstrants.text6,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: FontFamily.rubik,
                              color: Colours.primaryColor
                            ),
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
                        Get.to(()=>TrueOrFalseType());
                       },
              
                          child: Text(
                          Livequizconstrants.text7,
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
