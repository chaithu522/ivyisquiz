import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/gen/assets.gen.dart';
import 'package:quiz_app/gen/fonts.gen.dart';
import 'package:quiz_app/presentation/screens/live%20quiz/livequiz_1.dart';
import 'package:quiz_app/presentation/screens/quiz_details/quizdetails_contants.dart';
class QuizDetails extends StatefulWidget {
  const QuizDetails({super.key});

  @override
  State<QuizDetails> createState() => _QuizDetailsState();
}

class _QuizDetailsState extends State<QuizDetails> {
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      appBar: AppBar(backgroundColor: Colours.primaryColor,foregroundColor: Colours.CardColour,),
      backgroundColor:Colours.primaryColor,
      

      body: Container(
      
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start, 
          children: [Container(
            margin: EdgeInsetsDirectional.only(top: 45),
            child: Image.asset(Assets.images.quizdetail.path),
           height: 200.43,
           width: 429.63,
           ),
           
      Expanded(
        
        child: Container(
          margin: EdgeInsets.only(left: 8,right: 8),
          
          width: 379,
          height: 504,
         child: Container(
          
          child:Card(
            color: Colours.CardColour,
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Container(
                margin: EdgeInsets.only(left:18),
                child: Text(Quizdetailsconstant.textcard1,style:TextStyle(fontFamily: FontFamily.rubik,fontSize: 16,fontWeight: FontWeight.w500,color: Colours.textColour))),
              Container(
                margin: EdgeInsets.only(left: 18),
                child: Text(Quizdetailsconstant.textcard2,style:TextStyle(fontFamily: FontFamily.rubik,fontSize: 24,fontWeight: FontWeight.w500,color: Colours.primaryColor))),
              Container(
                margin: EdgeInsets.only(left: 15),
                width: 327,
                height: 64,
                child:Card(
                  color: Colours.secondaryColour,
                child: Row(

                children: [
                     SizedBox(width:10,height:10),
                      Image.asset(Assets.images.icon5.path),
                       SizedBox(width:5,height:10),
                      Text(Quizdetailsconstant.textcard3,style: TextStyle(fontFamily: FontFamily.rubik,fontSize: 16,fontWeight: FontWeight.w500),),
                      Divider(color: Colours.textColour,),
                      SizedBox(width: 20,),
                      Container(
                        
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(width:10,height:10),
                            Image.asset(Assets.images.icon6.path),
                              SizedBox(width:5,height:10),
                              Text(Quizdetailsconstant.textcard4,style: TextStyle(fontFamily: FontFamily.rubik,fontSize: 16,fontWeight: FontWeight.w500)),
                          ],
                        ),

                      ),
                        
                ],
                ),
              ),
            ),
        
             Container(
              margin: EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 15,),
                              Text(Quizdetailsconstant.textcard5,style: TextStyle(fontFamily: FontFamily.rubik,fontSize: 14,fontWeight: FontWeight.w500,color:Colours.textColour)),
                              SizedBox(height: 15,),
                              Text(Quizdetailsconstant.textcard6,style: TextStyle(fontFamily: FontFamily.rubik,fontSize: 16,fontWeight: FontWeight.w400,color:Colours.primaryColor))
                            ],
                          ),
                         )  ,
                         SizedBox(height: 15),
               Container(
  margin: EdgeInsets.only(left: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.asset(Assets.images.avatar.path),
      SizedBox(width: 15),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Quizdetailsconstant.textcard7,
            style: TextStyle(
              fontFamily: FontFamily.rubik,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colours.primaryColor,
            ),
          ),
          SizedBox(height: 2), 
          Text(
            Quizdetailsconstant.textcard8,
            style: TextStyle(
              fontFamily: FontFamily.rubik,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colours.textColour,
            ),
          ),
           SizedBox(height: 20,),
      Container(
        margin: EdgeInsets.only(left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
                SizedBox(height: 20,),
                      ElevatedButton(
                      onPressed: () {
                      Get.offAll(()=>Live_quiz());
                     },

                        child: Text(
                        Quizdetailsconstant.textcard9,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: FontFamily.rubik,
                            color: Colours.CardColour
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(169, 56),
                          primary: Colours.buttonColour,
                          shape: RoundedRectangleBorder( 
                            borderRadius: BorderRadius.circular(15),
                          ),
                          
                        ),
                      ),
          ],
        ),
      )
        ],
      ),
     
    ],
  ),
),

                
            
            ],
            ),
         ),
        ),
      )
   )] )));
    
    
  }
}