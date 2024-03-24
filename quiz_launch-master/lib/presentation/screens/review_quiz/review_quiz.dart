import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/gen/assets.gen.dart';
import 'package:quiz_app/gen/fonts.gen.dart';
import 'package:quiz_app/presentation/screens/quiz_details/quiz_details.dart';
import 'package:quiz_app/presentation/screens/review_quiz/review_constants.dart';

class ReviewAnswer extends StatefulWidget {
  const ReviewAnswer({Key? key}) : super(key: key);

  @override
  State<ReviewAnswer> createState() => _ReviewAnswerState();
}
class _ReviewAnswerState extends State<ReviewAnswer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Reviewconstants.appbar,
          style: TextStyle(
            color: Colours.CardColour,
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
        backgroundColor: Colours.primaryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colours.primaryColor,
          child: Column(
            children: [
              
              Container(
                margin: EdgeInsets.only(top: 80, left: 57),
                child: Image.asset(Assets.images.review.path),
                width: 360,
                height: 243,
              ),
               Container(
                margin: EdgeInsets.only(left: 8, right: 8),
                width: 359,
                height: 178,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                Assets.images.icon.path,
                                width: 24,
                                height: 24,
                              ),
                            ),
                            SizedBox(width: 5, height: 5),
                            Text(
                              Reviewconstants.cardtext1,
                              style: TextStyle(
                                fontFamily: FontFamily.rubik,
                                fontSize: 16,
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [Icon(Icons.edit)],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Reviewconstants.cardtext2,
                              style: TextStyle(
                                fontFamily: FontFamily.rubik,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              Reviewconstants.cardtext3,
                              style: TextStyle(
                                fontFamily: FontFamily.rubik,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 8, right: 8),
                width: 359,
                height: 658, 
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                          children: [
                            Text(
                              Reviewconstants.cardtext4,
                              style: TextStyle(
                                fontFamily: FontFamily.rubik,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colours.primaryColor,
                              ),
                            ),
                            Icon(Icons.edit),
                          ],
                        ),
                        SizedBox(height: 20), 
                        SizedBox(
                          width: double.infinity,
                          height: 500,
                          child: Card(
                            color: Colours.secondaryColour,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                children:[
                                  Row(children:[
                                    SizedBox(height: 2,),
                              Image.asset(
                                Assets.images.one.path,),
                              
                              SizedBox(width: 10,height: 20,),
                              Text(
                                Reviewconstants.cardtext5,
                                style: TextStyle(
                                  fontFamily: FontFamily.rubik,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colours.primaryColor,
                                ),
                              ),SizedBox(width: 10,),
                                Image.asset(
                                Assets.images.quiztype.path,),
                                
                       ] )
                       ,
                       SizedBox(height: 5,),
                       Container(
                        margin: EdgeInsets.only(left: 24),
                      child: Column(
                        
                                  children: [
                                    
                                      Text(
                                Reviewconstants.cardtext7,
                                style: TextStyle(
                                  fontFamily: FontFamily.rubik,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colours.textColour
                                ),
                                 ) ],
                                 
                                )), Row(children:[
                                    SizedBox(height: 2,),
                              Image.asset(
                                Assets.images.two.path,),
                              
                              SizedBox(width: 10,height: 20,),
                              Text(
                                Reviewconstants.cardtext5,
                                style: TextStyle(
                                  fontFamily: FontFamily.rubik,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colours.primaryColor,
                                ),
                              ),SizedBox(width: 10,),
                                Image.asset(
                                Assets.images.quiztype.path,),
                                
                       ] )
                       ,
                       SizedBox(height: 5,),
                       Container(
                        margin: EdgeInsets.only(left: 24),
                      child: Column(
                        
                                  children: [
                                    
                                      Text(
                                Reviewconstants.cardtext8,
                                style: TextStyle(
                                  fontFamily: FontFamily.rubik,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colours.textColour
                                ),
                                 ) ],

                                )),
                                 Row(children:[
                                    SizedBox(height: 2,),
                              Image.asset(
                                Assets.images.three.path,),
                              
                              SizedBox(width: 10,height: 20,),
                              Text(
                                Reviewconstants.cardtext5,
                                style: TextStyle(
                                  fontFamily: FontFamily.rubik,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colours.primaryColor,
                                ),
                              ),SizedBox(width: 10,),
                                Image.asset(
                                Assets.images.quiztype2.path,),
                                
                       ] )
                       ,
                       SizedBox(height: 5,),
                       Container(
                        margin: EdgeInsets.only(left: 24),
                      child: Column(
                        
                                  children: [
                                    
                                      Text(
                                Reviewconstants.cardtext10,
                                style: TextStyle(
                                  fontFamily: FontFamily.rubik,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colours.textColour
                                ),
                                 ) ],

                                )),
                                 Row(children:[
                                    SizedBox(height: 2,),
                              Image.asset(
                                Assets.images.four.path,),
                              
                              SizedBox(width: 10,height: 20,),
                              Text(
                                Reviewconstants.cardtext5,
                                style: TextStyle(
                                  fontFamily: FontFamily.rubik,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colours.primaryColor,
                                ),
                              ),SizedBox(width: 10,),
                                Image.asset(
                                Assets.images.quiztype3.path,),
                                
                       ] )
                       ,
                       SizedBox(height: 5,),
                       Container(
                        margin: EdgeInsets.only(left: 24),
                      child: Column(
                        
                                  children: [
                                    
                                      Text(
                                Reviewconstants.cardtext11,
                                style: TextStyle(
                                  fontFamily: FontFamily.rubik,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colours.textColour
                                ),
                                 ) ],

                                ))])),
                          ),
                        ),
                         SizedBox(height: 20,),
                      ElevatedButton(
                      onPressed: () {
                      Get.to(()=>QuizDetails());
                     },

                        child: Text(
                        Reviewconstants.cardtext12,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: FontFamily.rubik,
                            color: Colours.CardColour
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(370, 50),
                          primary: Colours.buttonColour,
                          shape: RoundedRectangleBorder( 
                            borderRadius: BorderRadius.circular(15),
                          ),
                          
                        ),
                      ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
