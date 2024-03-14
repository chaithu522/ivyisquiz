import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/gen/fonts.gen.dart';
import 'package:quiz_app/presentation/screens/createquiz/add_cateragory.dart';
import 'package:quiz_app/presentation/screens/createquiz/createquiz_page.dart';
import 'package:quiz_app/presentation/screens/home/home_constraints.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'), 
    Text('Search Page'), 
    Text('Leaderboard Page'), 
    Text('Profile Page'), 
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: Text(
    
      HomeConstaints.appBar,
      style: TextStyle(
        fontFamily: FontFamily.rubik,
        fontSize: 18,
        color: Colours.CardColour,
       
        fontWeight: FontWeight.w500,
      ),
    ),
    foregroundColor: Colours.CardColour,
    backgroundColor: Colours.primaryColor,
  ),
  backgroundColor: Colours.primaryColor,
  body: SingleChildScrollView(
    child: Container(
      margin: EdgeInsets.only(left: 24, right: 24, top: 50),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 327.0,
            height: 84.0,
            child: Card(
              color: Colours.homeCard,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        HomeConstaints.cardtext1,
                        style: TextStyle(
                          fontFamily: FontFamily.rubik,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.headphones_rounded, color: Colours.homeCardtext),
                        SizedBox(width: 8),
                        Text(
                          HomeConstaints.cardtext2,
                          style: TextStyle(
                            fontFamily: FontFamily.rubik,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 232,
            width: 327,
            child: Card(
              color: Colours.homeCard2,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text(HomeConstaints.cardtext3,style:TextStyle(fontSize: 14,fontWeight: FontWeight.w500,fontFamily: FontFamily.rubik,color: Colours.CardColour) ,),
                  SizedBox(height: 20,),
                  Text(HomeConstaints.cardtext4,style:TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: FontFamily.rubik,color: Colours.CardColour)),
                  SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: (){},
                    child: Text(
                      HomeConstaints.buttomText,
                      style: TextStyle(
                        color: Colours.primaryColor,
                        fontFamily: FontFamily.rubik,
                        fontSize: 14,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colours.CardColour,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                    )
                  )
                ]
              ),
            ),
          ),
          SizedBox(height: 20),
          Card(
            color: Colours.CardColour,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 456,
                margin: EdgeInsets.only(top:2,left: 0) ,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                      Text(
                        HomeConstaints.title,
                        style: TextStyle(fontSize: 20, fontFamily: FontFamily.rubik, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 10,),
                      TextButton(
                        onPressed: (){},
                        child: Text(
                          HomeConstaints.buttomText2,
                          style: TextStyle(fontFamily: FontFamily.rubik, fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {
         Get.to(()=>AddCategaryPage());
    
    },
    child: Icon(Icons.add),
    backgroundColor: Colours.primaryColor, 
  ),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  bottomNavigationBar: BottomNavigationBar(
    backgroundColor: Colours.primaryColor,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: '', 
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.leaderboard),
        label: '', 
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: '', 
      ),
    ],
    currentIndex: _selectedIndex,
    selectedItemColor: Colours.primaryColor,
    onTap: _onItemTapped,
  
  ),
);
  }}