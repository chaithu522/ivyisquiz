import 'package:flutter/material.dart';
class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int selectedCard = -1;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: false,
      scrollDirection: Axis.vertical,
      itemCount: 1,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: MediaQuery.of(context).size.width /(MediaQuery.of(context).size.height/8)),
        itemBuilder: (BuildContext context, int index) {return GestureDetector(onTap: (){setState(() {
        selectedCard  = index;
          
  
          
        });
        
        },
        child: Card(
          color:selectedCard== index?Colors.blue:Colors.amber,
          child: Container(
            height:56,
            width:200,
            child: Center(
              child:Row(
                children:[
                  Checkbox(value: true, onChanged: (value){}),
                  Text('Add Answer')
                ]
              )
            ),
          )
        ),
         ); } );
    
  
}}
