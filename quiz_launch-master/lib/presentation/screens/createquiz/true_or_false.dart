import 'package:flutter/material.dart';
class TrueOrFalse extends StatefulWidget {
  const TrueOrFalse({super.key});

  @override
  State<TrueOrFalse> createState() => _TrueOrFalseState();
}

class _TrueOrFalseState extends State<TrueOrFalse> {
  int selectedCard = -1;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: false,
      scrollDirection: Axis.vertical,
      itemCount: 2,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.width /(MediaQuery.of(context).size.height)),
        itemBuilder: (BuildContext context, int index) {return GestureDetector(onTap: (){setState(() {
        selectedCard  = index;
          
  
          
        });
        
        },
        child: Card(
          color:selectedCard== index?Colors.blue:Colors.amber,
          child: Container(
            height:200,
            width:200,
            child: Center(
              child: Text(
                '$index',
                style:TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
          )
        ),
         ); } );
    
  
}}
