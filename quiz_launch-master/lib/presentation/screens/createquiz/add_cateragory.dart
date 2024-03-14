import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/gen/assets.gen.dart';
import 'package:quiz_app/gen/fonts.gen.dart';
import 'package:quiz_app/presentation/screens/category/choose_cat.dart';
import 'package:quiz_app/presentation/screens/createquiz/create_constraints.dart';
import 'package:quiz_app/presentation/screens/createquiz/createquiz_page.dart';

class AddCategaryPage extends StatefulWidget {
  const AddCategaryPage({super.key});

  @override
  State<AddCategaryPage> createState() => _AddCategaryPageState();
}

class _AddCategaryPageState extends State<AddCategaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(
          CreateConstants.appBarTitle,
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
        onPressed: () {
          
        },
        icon: Icon(
          Icons.more_horiz, 
          color: Colors.white, 
        ),
      ),
    ],
  ),
      
      body: Container(
        color: Colours.primaryColor,
        height: 880,
        width: 500,
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               
                  children:[ Card(
                    color: Colours.secondaryColour,
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      height: 200,
                      width: 327,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(Assets.images.camera.path),
                          Text(
                            'Add Cover Image',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: FontFamily.rubik,
                            ),
                          ),
                          
                        ],
                        
                        
                      ),
                    ),
                  ),
            ]),
            SizedBox(height: 10,),
            Column(
             mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                CreateConstants.titlepage1,
              style: TextStyle(
                color: Colours.cardTextColour,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 0, 
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                
                child: Container(
                  height: 30,
                  width: 327, 
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: CreateConstants.titlehintpage1,
                      hintStyle: TextStyle(color: Colours.formTextColour),
                      filled: true,
                      fillColor: Colours.CardColour,
                      contentPadding: EdgeInsets.zero, 
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide.none,
                      ),
                    
                    ),
                  ),
                  
                ),

              ),
            ),
             Text(
                CreateConstants.categorypage1,
              style: TextStyle(
                color: Colours.cardTextColour,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 0, 
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                
                child: Container(
                  height: 30,
                  width: 327, 
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: CreateConstants.categoryhintpage1,
                      hintStyle: TextStyle(color: Colours.formTextColour),
                      filled: true,
                      fillColor: Colours.CardColour,
                      contentPadding: EdgeInsets.zero, 
                       suffixIcon: IconButton(onPressed: (){Get.to(()=>ChooseCatPage());}, icon:Icon(Icons.arrow_forward_ios,color: Colours.textColour,size: 24,),padding: EdgeInsets.only(top:2),),
                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide.none,
                      ),
                    
                    ),
                  ),
                  
                ),

              ),
            ),
            SizedBox(height: 10,),
            Text(
              CreateConstants.description,
              style: TextStyle(
                color: Colours.cardTextColour,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 0, 
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                
                child: Container(
                  height: 30, 
                  width: 327,
                  child: TextFormField(
                    
                    decoration: InputDecoration(
                      hintText: CreateConstants.hintdescription,
                      hintStyle: TextStyle(color: Colours.formTextColour),
                      filled: true,
                      fillColor: Colours.CardColour,
                      contentPadding: EdgeInsets.zero, 
                    
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide.none,
                      ),
                     
                    ),
                  ), 
                ),

              ),
            ),
            Container
               (
                child: SizedBox(height: 20,)),
                      ElevatedButton(
                      onPressed: () {
                      Get.to(()=>Createpage());
                     },

                        child: Text(
                        CreateConstants.button,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: FontFamily.rubik,
                            color: Colours.CardColour
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(342, 50),
                          primary: Colours.buttonColour,
                          shape: RoundedRectangleBorder( 
                            borderRadius: BorderRadius.circular(15),
                          ),
                          
                        ),
                      ),
        
             ] )
             
            
        ] ) ),
        ),
      );
  
  }}

  

  
  
    
     