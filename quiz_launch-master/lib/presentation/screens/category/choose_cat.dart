import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/gen/fonts.gen.dart';
import 'package:quiz_app/presentation/screens/category/choosecat_constants.dart';
import 'package:quiz_app/presentation/screens/createquiz/createquiz_page.dart';

class ChooseCatPage extends StatefulWidget {
  const ChooseCatPage({Key? key}) : super(key: key);

  @override
  State<ChooseCatPage> createState() => _ChooseCatPageState();
}

class _ChooseCatPageState extends State<ChooseCatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ChooseCategory.app,
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
      ),
      backgroundColor: Colours.primaryColor,
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          width: 600,
          child: Card(
            margin: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  children: List.generate(8, (index) {
                    return OutlinedButton(
                      onPressed: () {},
                      child: Text("Button ${index + 1}"),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colours.primaryColor),
                        backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colours.onpressedbutton; 
                        }
                          return Colours.secondaryColour; 
                        }),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              
               SizedBox(height: 5,),
               Expanded(
                 child: Container
                
                   
                   (
                    margin: EdgeInsets.only(left:34,right: 24),
                    child: SizedBox(height: 5,)),
               ),
                        ElevatedButton(
                        onPressed: () {
                        Get.to(()=>Createpage());
                       },
        
                          child: Text(
                          ChooseCategory.catbutton,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: FontFamily.rubik,
                              color: Colours.CardColour
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(347, 50),
                            primary: Colours.buttonColour,
                            shape: RoundedRectangleBorder( 
                              borderRadius: BorderRadius.circular(15),
                            ),
                            
                          ),
                        ),
           ] )
          ),
        ),
      ),
    );
  }
}
