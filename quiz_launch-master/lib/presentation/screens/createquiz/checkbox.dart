import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  
   List<int> selectedCardList = [];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: false,
      scrollDirection: Axis.vertical,
      itemCount: 4,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.width /(MediaQuery.of(context).size.height/8)),
        itemBuilder: (BuildContext context, int index) {return GestureDetector(onTap: (){setState(() {
          if(selectedCardList.contains(index)==true)
          {}
        else{
          selectedCardList.add(index);
        }
          
        });
        
        },
        child: Card(
          color:selectedCardList== index?Colors.blue:Colors.amber,
          child: Container(
            height:56,
            width:200,
            child: Center(
              child:Row(
                children:[
                  Checkbox(value: true, onChanged: (value){}),
                 Text("Add Answer")
                ]
              )
            ),
          )
        ),
         ); } );
    
  
}}