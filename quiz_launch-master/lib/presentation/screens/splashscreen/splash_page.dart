

import 'package:flutter/material.dart';
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/gen/assets.gen.dart';
import 'package:quiz_app/gen/fonts.gen.dart';


import '../onboarding/onboarding_page.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState(){
    super.initState();
    _navigatetoonboarding();
  }
  _navigatetoonboarding() async{
 await Future.delayed(Duration(milliseconds: 4500),(){});
 Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>OnBoardingPage()) );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colours.primaryColor,

      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [Container(
            child: Image.asset(Assets.images.appicon.path),
           height: 150,
           width: 150,
           ),
           Container(
            padding: EdgeInsets.only(top:5),
      child: Text('Quizy',style:TextStyle(fontSize: 36,fontWeight:FontWeight.w800,fontFamily:FontFamily.nunito,color: Colours.CardColour )),
      
      ),
      
   ] )));
  }
}

 
  
  