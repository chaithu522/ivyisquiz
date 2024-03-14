import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/gen/fonts.gen.dart';
import 'package:quiz_app/presentation/screens/emailpage/email_page.dart';
import 'package:quiz_app/presentation/screens/login/login_page.dart';
import 'package:quiz_app/presentation/screens/onboarding/onboarding_page.dart';
import 'package:quiz_app/presentation/screens/signup/signup_constants.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          SignUpConstsant.appBar,
          style: TextStyle(
            color: Colours.cardTextColour,
            fontFamily: FontFamily.rubik,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        foregroundColor: Colours.cardTextColour,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colours.cardTextColour,
          size: 25,
        ),
        backgroundColor: Colours.secondaryColour,
      ),
      backgroundColor: Colours.secondaryColour,
      body: Container(
        margin: EdgeInsets.only(top: 100, left: 27, right: 27),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(EmailPage()); 
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email_outlined,color: Colours.CardColour,), 
                  SizedBox(width: 8), 
                  Text(
                    SignUpConstsant.formText1,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: FontFamily.rubik,
                      color: Colours.CardColour,
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(370, 50),
                primary: Colours.buttonColour,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Get.to(EmailPage());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                  Icon(Icons.android_outlined), 
                  SizedBox(width: 8), 
                  Text(
                    SignUpConstsant.formtext2,
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
                fixedSize: Size(370, 50),
                primary: Colours.CardColour,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
             SizedBox(height: 15,),                                                
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:  [
                          SizedBox(height: 2,width: 0,),
                          Text(
                            SignUpConstsant.text1,
                            style: TextStyle(
                              color: Colours.textColour,
                              fontWeight: FontWeight.w400,
                              fontFamily: FontFamily.rubik,
                              fontSize: 16
                            ),
                          ),
                          SizedBox(height: 2,width: 0,),
                          TextButton(
                            onPressed:(){
                              Get.to(OnBoardingPage());
                            },
                            child: Text(
                              SignUpConstsant.textButton,
                              style: TextStyle(
                                color: Colours.buttonColour,
                                fontFamily: FontFamily.rubik,
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            style: TextButton.styleFrom(
                              primary: Colours.textColour
                            ),
                          ),
                        ]
                      ),
                      SizedBox(height: 15,),
                      Container(
 
                        margin: EdgeInsets.only(left: 10),
                        
                        child: Row(
                       
                        children: [
                          Text(SignUpConstsant.text4,style: TextStyle(fontSize: 14,color: Colours.textColour,fontWeight: FontWeight.w400),),
                          RichText(text: TextSpan(text:SignUpConstsant.richText2,style: TextStyle(fontSize: 14,color:Colours.primaryColor,fontWeight: FontWeight.w500))),
                        ],
                                 ),
                      ),
                      SizedBox(height: 5,),
                         Container(
                          margin: EdgeInsets.only(left: 150),
                           child: Column(
                           children: [RichText(text: TextSpan(text:SignUpConstsant.richText3,style: TextStyle(fontSize: 14,color:Colours.primaryColor,fontWeight: FontWeight.w500))),],
                                              ),
                         )
          ],
        ),
      ),
    );
  }
}
