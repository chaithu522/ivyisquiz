import 'package:flutter/material.dart';

class CommonUIBG extends StatelessWidget
{
  final Widget widget;

  const CommonUIBG({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(width:MediaQuery.of(context).size.width,height:MediaQuery.of(context).size.height,color:const Color.fromRGBO(16, 12, 140, 1),child:Container(margin:EdgeInsets.all(8),child:Card(child:this.widget)));
  }
}
