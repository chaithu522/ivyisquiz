import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/core/colors.dart';
import 'package:quiz_app/gen/fonts.gen.dart';
import 'package:quiz_app/presentation/screens/home/home_page.dart';
import 'package:quiz_app/presentation/screens/login/login_constands.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          login.appBarTitle,
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
        margin: EdgeInsets.only(top: 70, left: 27, right: 27),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              login.text1,
              style: TextStyle(
                color: Colours.cardTextColour,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 350,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: login.hinttext1,
                      hintStyle: TextStyle(color: Colours.formTextColour),
                      filled: true,
                      fillColor: Colours.CardColour,
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colours.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              login.text2,
              style: TextStyle(
                color: Colours.cardTextColour,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 350,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: login.hinttext2,
                      hintStyle: TextStyle(color: Colours.formTextColour),
                      filled: true,
                      fillColor: Colours.CardColour,
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(
                        Icons.message_outlined,
                        color: Colours.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => HomePage());
              },
              child: Text(
                login.buttomText,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: FontFamily.rubik,
                    color: Colours.CardColour),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(370, 50),
                primary: Colours.buttonColour,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    login.text3,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colours.textColour,
                        fontWeight: FontWeight.w400),
                  ),
                  RichText(
                      text: TextSpan(
                          text: login.richText1,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colours.primaryColor,
                              fontWeight: FontWeight.w500))),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(left: 120),
              child: Column(
                children: [
                  RichText(
                      text: TextSpan(
                          text: login.richText2,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colours.primaryColor,
                              fontWeight: FontWeight.w500))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
