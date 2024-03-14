import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/gen/assets.gen.dart';
import 'package:quiz_app/gen/fonts.gen.dart';
import 'package:quiz_app/presentation/screens/category/choose_cat.dart';
// import 'package:quiz_app/presentation/screens/createquiz/create_constants.dart';
import 'package:quiz_app/presentation/screens/createquiz/create_constraints.dart';
import 'package:quiz_app/presentation/screens/review_quiz/review_quiz.dart';

class Createpage extends StatefulWidget {
  const Createpage({Key? key}) : super(key: key);

  @override
  State<Createpage> createState() => _CreatepageState();
}

class _CreatepageState extends State<Createpage> {
  String? _selectedChoice; 

  List<String> _choices = ['Multiple Answer', 'True or False', 'Checkbox', 'Radio Button'];

  @override
  void initState() {
    super.initState();
    _selectedChoice = _choices.first; 
  }

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
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_horiz),
              ),
             
              
            ],
          ),
        ],
      ),
      
      body: SingleChildScrollView(
        child:
      Container(
        
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
                children: [
                  Card(
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
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 40,
                          child: Card(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 4, right: 2),
                              child: Row(
                                children: [
                                  Icon(Icons.lock_clock, size: 16),
                                  SizedBox(width: 8),
                                  Text(
                                    CreateConstants.sec,
                                    style: TextStyle(
                                      fontFamily: FontFamily.rubik,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 9),
                        Container(
                          width: 180,
                          height: 40,
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Row(
                                children: [
                                  SizedBox(width: 5),
                                  DropdownButton<String>(
                                    icon: Icon(Icons.arrow_drop_down, color: Colours.primaryColor), 
                                    value: _selectedChoice,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        _selectedChoice = newValue;
                                      });
                                    },
                                    dropdownColor: Colours.CardColour,
                                    items: _choices.map((String choice) {
                                      return DropdownMenuItem<String>(
                                        value: choice,
                                        child: Text(choice),
                                      );
                                    }).toList(),
                                
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      CreateConstants.addques,
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
                  hintText: CreateConstants.addqueshint,
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
                      Get.to(()=>ReviewAnswer());
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
        
                    
                                ],
                              
                              ),
                            ),
                            
                            
            ]
                        ),
                        
                    
                        

                  
                ),
              ),
            
          ),
        );
  }
}
