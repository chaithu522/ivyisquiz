import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/gen/assets.gen.dart';
import 'package:quiz_app/gen/fonts.gen.dart';
import 'package:quiz_app/presentation/screens/profile/profile_constants.dart';
import 'package:quiz_app/presentation/screens/settings/settings_page.dart';
import 'package:quiz_app/presentation/widgets/common_ui_bg.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        foregroundColor: Colours.CardColour,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colours.CardColour,
          size: 25,
        ),
        backgroundColor: Colours.primaryColor,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings),

              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colours.primaryColor,
      body:SingleChildScrollView(
      child:Container(

       margin: EdgeInsets.only(left: 20,top:10),
        child: Column(
          children: [
             Image.asset(Assets.images.profile.path),
          Container(
            width: 359,
            height: 665,
            child: CommonUIBG(
                widget: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child:Column(children:[
                       Center(child: Text(ProfileConstants.name,style: TextStyle(fontFamily: FontFamily.rubik,fontSize: 24,fontWeight: FontWeight.w500),)),
                  ])),
                  Container(
                    width: 327,
                    height: 101,
                    child: Card(
                      color: Colours.primaryColor,
                       child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 2, 
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                    IconButton(onPressed: (){},icon: Icon(Icons.star_border_outlined),color: Colours.CardColour,iconSize: 24,),
                  SizedBox(height:1),
                  Text(ProfileConstants.card1,style: TextStyle(
                color: Colours.textColour, 
                fontSize: 12,
                fontWeight: FontWeight.w500,
              )
              
              ),
              SizedBox(height: 2,),
              Text(ProfileConstants.card2,style: TextStyle(
            color: Colours.CardColour,
            fontFamily: FontFamily.rubik,
            fontSize: 16,
            fontWeight: FontWeight.w700,)
                  ),
                  Row(
                    children:[
                  Divider(color: Colours.cardTextColour,),
                  
                 
                  
                  ],
                  ),
                  
               ] 
               )),
               SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                    IconButton(onPressed: (){},icon: Icon(Icons.public_sharp),color: Colours.CardColour,iconSize: 24,),
                  SizedBox(height:1),
                  Text(ProfileConstants.card3,style: TextStyle(
                color: Colours.textColour, 
                fontSize: 12,
                fontWeight: FontWeight.w500,
              )
              
              ),
              SizedBox(height: 2,),
              Text(ProfileConstants.card4,style: TextStyle(
            color: Colours.CardColour,
            fontFamily: FontFamily.rubik,
            fontSize: 16,
            fontWeight: FontWeight.w700,)
                  ),
                  Row(
                    children:[
                  Divider(color: Colours.cardTextColour,),
                  
                 
                  
                  ],
                  ),
                  
               ] 
               )),
               
               SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                    IconButton(onPressed: (){},icon: Icon(Icons.local_activity_outlined),color: Colours.CardColour,iconSize: 24,),
                  SizedBox(height:1),
                  Text(ProfileConstants.card1,style: TextStyle(
                color: Colours.textColour, 
                fontSize: 12,
                fontWeight: FontWeight.w500,
              )
              
              ),
              SizedBox(height: 2,),
              Text(ProfileConstants.card2,style: TextStyle(
            color: Colours.CardColour,
            fontFamily: FontFamily.rubik,
            fontSize: 16,
            fontWeight: FontWeight.w700,)
                  ),
                  Row(
                    children:[
                  Divider(color: Colours.cardTextColour,),
                  
                 
                  
                  ],
                  ),
                  
               ] 
               )),
               
               
               
               
               ] ),
                  )
                    
          ),
           SizedBox(height: 50,),
                      ElevatedButton(
                      onPressed: () {
                      Get.to(()=>SettingsPage());
                     },

                        child: Text(
                        ProfileConstants.card7,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: FontFamily.rubik,
                            color: Colours.CardColour
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          // fixedSize: Size(370, 50),
                          primary: Colours.buttonColour,
                          shape: RoundedRectangleBorder( 
                            borderRadius: BorderRadius.circular(15),
                          ),
                          
                        ),
                      ),
          
          ] )),
          )]))));
  }
}