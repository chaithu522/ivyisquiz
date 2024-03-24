import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/gen/fonts.gen.dart';
import 'package:quiz_app/presentation/screens/help_and_support/help_support_page.dart';
import 'package:quiz_app/presentation/screens/settings/settings_constrants.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationsEnabled = true;

  Future<void> _logout() async {
    final GoogleSignIn googleSign = GoogleSignIn();
    await googleSign.signOut();
  }

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
                  // leading: Image.asset(Assets.images.updateprofile.path),
                   
                  title: Text(
                    SettingsConstrants.text2,
                    style: TextStyle(
                        fontFamily: FontFamily.rubik,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    SettingsConstrants.text3,
                    style: TextStyle(
                      fontFamily: FontFamily.rubik,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colours.textColour,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_rounded,
                    color: Colours.primaryColor,
                    size: 20,
                  ),
                  onTap: () {},
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
                  // leading:  Image.asset(Assets.images.message.path),
                  title: Text(
                    SettingsConstrants.text4,
                    style: TextStyle(
                        fontFamily: FontFamily.rubik,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    SettingsConstrants.text5,
                    style: TextStyle(
                      fontFamily: FontFamily.rubik,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colours.textColour,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colours.primaryColor,
                    size: 20,
                  ),
                  onTap: () {},
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
                  // leading:  Image.asset(Assets.images.password.path),
                  title: Text(
                    SettingsConstrants.text6,
                    style: TextStyle(
                        fontFamily: FontFamily.rubik,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(SettingsConstrants.text7,
                      style: TextStyle(
                        fontFamily: FontFamily.rubik,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colours.textColour,
                      )),
                  trailing: Icon(Icons.arrow_forward,
                      color: Colours.primaryColor, size: 20),
                  onTap: () {},
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              SettingsConstrants.text8,
              style: TextStyle(
                fontFamily: FontFamily.rubik,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colours.textColour,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(right: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    SettingsConstrants.text10,
                    style: TextStyle(
                      fontFamily: FontFamily.rubik,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colours.primaryColor,
                    ),
                  ),
                  Switch(
                    value: _notificationsEnabled,
                    // Example value, you can set it based on user preference
                    onChanged: (value) {
                      setState(() {
                        _notificationsEnabled = value;
                      });
                    },
                    activeColor: Colours.CardColour,
                    inactiveThumbColor: Colours.CardColour,
                    activeTrackColor: Colours.primaryColor,
                    inactiveTrackColor: Colours.primaryColor,
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
                  // leading:  Image.asset(Assets.images.puzzle.path),
                  title: Text(
                    SettingsConstrants.text9,
                    style: TextStyle(
                        fontFamily: FontFamily.rubik,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(SettingsConstrants.text14,
                      style: TextStyle(
                        fontFamily: FontFamily.rubik,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colours.textColour,
                      )),
                  trailing: Icon(Icons.arrow_forward,
                      color: Colours.primaryColor, size: 20),
                  onTap: () {},
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
                //  leading:  Image.asset(Assets.images.questionmark.path),
                  title: Text(
                    SettingsConstrants.text11,
                    style: TextStyle(
                        fontFamily: FontFamily.rubik,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(SettingsConstrants.text12,
                      style: TextStyle(
                        fontFamily: FontFamily.rubik,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colours.textColour,
                      )),
                  trailing: Icon(Icons.arrow_forward,
                      color: Colours.primaryColor, size: 20),
                  onTap: () {  Get.to(() => HelpSupport());},
              ),
            )),
            Container(
              margin: EdgeInsets.only(left: 140),
              child: TextButton(
                onPressed: () async {
                  await _logout();
                  Navigator.pop(context);

                },
                child: Text(
                  SettingsConstrants.text15,
                  style: TextStyle(
                    color: Colours.redcolor,
                    fontSize: 16,
                    fontFamily: FontFamily.rubik,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
