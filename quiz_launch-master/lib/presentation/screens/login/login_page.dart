// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:quiz_app/core/colors.dart';
// import 'package:quiz_app/gen/fonts.gen.dart';
// import 'package:quiz_app/presentation/screens/home/home_page.dart';
// import 'package:quiz_app/presentation/screens/login/login_constants.dart';
// import 'package:quiz_app/presentation/screens/login/onboarding_controller.dart';
//
// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage>
// {
//   LoginController loginController = Get.put(LoginController());
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           LoginConstants.appBarTitle,
//           style: TextStyle(
//             color: Colours.cardTextColour,
//             fontFamily: FontFamily.rubik,
//             fontSize: 24,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         foregroundColor: Colours.cardTextColour,
//         centerTitle: true,
//         iconTheme: IconThemeData(
//           color: Colours.cardTextColour,
//           size: 25,
//         ),
//         backgroundColor: Colours.secondaryColour,
//       ),
//       backgroundColor: Colours.secondaryColour,
//       body:Obx(() {
//
//         if(loginController.loading.value == false)
//           {
//
//             return CircularProgressIndicator();
//           }
//           else
//             {
//
//               return Container(
//                 margin: EdgeInsets.only(top: 70, left: 27, right: 27),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       LoginConstants.text1,
//                       style: TextStyle(
//                         color: Colours.cardTextColour,
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Card(
//                       elevation: 0,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           height: 30,
//                           width: 350,
//                           child: TextFormField(
//                             decoration: InputDecoration(
//                               hintText: LoginConstants.hinttext1,
//                               hintStyle: TextStyle(color: Colours.formTextColour),
//                               filled: true,
//                               fillColor: Colours.CardColour,
//                               contentPadding: EdgeInsets.zero,
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.all(Radius.circular(15)),
//                                 borderSide: BorderSide.none,
//                               ),
//                               prefixIcon: Icon(
//                                 Icons.email_outlined,
//                                 color: Colours.primaryColor,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Text(
//                       LoginConstants.text2,
//                       style: TextStyle(
//                         color: Colours.cardTextColour,
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Card(
//                       elevation: 0,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           height: 30,
//                           width: 350,
//                           child: TextFormField(
//                             decoration: InputDecoration(
//                               hintText: LoginConstants.hinttext2,
//                               hintStyle: TextStyle(color: Colours.formTextColour),
//                               filled: true,
//                               fillColor: Colours.CardColour,
//                               contentPadding: EdgeInsets.zero,
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.all(Radius.circular(15)),
//                                 borderSide: BorderSide.none,
//                               ),
//                               prefixIcon: Icon(
//                                 Icons.message_outlined,
//                                 color: Colours.primaryColor,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 50,
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//
//                         loginController.login(email:, password: password);
//
//
//                         Get.to(() => HomePage());
//                       },
//                       child: Text(
//                         LoginConstants.login,
//                         style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w500,
//                             fontFamily: FontFamily.rubik,
//                             color: Colours.CardColour),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                         fixedSize: Size(370, 50),
//                         primary: Colours.buttonColour,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(left: 10),
//                       child: Row(
//                         children: [
//                           Text(
//                             LoginConstants.text3,
//                             style: TextStyle(
//                                 fontSize: 14,
//                                 color: Colours.textColour,
//                                 fontWeight: FontWeight.w400),
//                           ),
//                           RichText(
//                               text: TextSpan(
//                                   text: LoginConstants.richText1,
//                                   style: TextStyle(
//                                       fontSize: 14,
//                                       color: Colours.primaryColor,
//                                       fontWeight: FontWeight.w500))),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(left: 120),
//                       child: Column(
//                         children: [
//                           RichText(
//                               text: TextSpan(
//                                   text: LoginConstants.richText2,
//                                   style: TextStyle(
//                                       fontSize: 14,
//                                       color: Colours.primaryColor,
//                                       fontWeight: FontWeight.w500))),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               );
//             }
//       },
//     ));
//   }
// }
