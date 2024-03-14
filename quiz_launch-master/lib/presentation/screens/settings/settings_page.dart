import 'package:flutter/material.dart';
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/gen/fonts.gen.dart';
import 'package:quiz_app/presentation/screens/settings/settings_constrants.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          SettingsConstrants.appbar,
          style: TextStyle(
            color: Colours.primaryColor,
            fontFamily: FontFamily.rubik,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        foregroundColor: Colours.primaryColor,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colours.primaryColor,
          size: 25,
        ),
        backgroundColor: Colours.CardColour,
      ),
      backgroundColor: Colours.CardColour,
      body: Container(
        margin: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    SettingsConstrants.text1,
                    style: TextStyle(
                      fontFamily: FontFamily.rubik,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colours.textColour,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Card(
                color: Colours.secondaryColour,
                elevation: 1,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Icon(Icons.account_circle,color: Colours.primaryColor,size: 24,),
                  title: Text(SettingsConstrants.text2,style: TextStyle(fontFamily: FontFamily.rubik,fontSize: 16,fontWeight: FontWeight.w500),),
                  subtitle: Text(SettingsConstrants.text3,style:TextStyle( fontFamily: FontFamily.rubik,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colours.textColour,) ,),
                  trailing: Icon(Icons.arrow_forward_rounded,color: Colours.primaryColor,size: 20,),
                  onTap: () {
                    
                  },
                ),
              ),
            ),
             Container(
              margin: EdgeInsets.only(right: 20),
              child: Card(
                color: Colours.secondaryColour,
                elevation: 1,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Icon(Icons.message_rounded,color: Colours.primaryColor,size: 24,),
                  title: Text(SettingsConstrants.text4,style: TextStyle(fontFamily: FontFamily.rubik,fontSize: 16,fontWeight: FontWeight.w500),),
                  subtitle: Text(SettingsConstrants.text5,style:TextStyle(fontFamily: FontFamily.rubik,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colours.textColour,) ,),
                  trailing: Icon(Icons.arrow_forward,color: Colours.primaryColor,size: 20,),
                  onTap: () {
                    
                  },
                ),
              ),
            ),
             Container(
              margin: EdgeInsets.only(right: 20),
              child: Card(
                color: Colours.secondaryColour,
                elevation: 1,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Setting 1'),
                  subtitle: Text('Description for setting 1'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
