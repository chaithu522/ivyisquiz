import 'package:flutter/material.dart';

class MultAnswer extends StatefulWidget {
  const MultAnswer({super.key});

  @override
  State<MultAnswer> createState() => _MulAnswerState();
}

class _MulAnswerState extends State<MultAnswer> {
  @override
   List<int> selectedCardList = [];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: false,
      scrollDirection: Axis.vertical,
      itemCount: 4,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.width /(MediaQuery.of(context).size.height)),
        itemBuilder: (BuildContext context, int index) {return GestureDetector(onTap: (){setState(() {
          if(selectedCardList.contains(index)==true)
          {
            selectedCardList.remove(index);
          }
          else{
            selectedCardList.add(index);
          }
  
          
        });
        
        },
        child: Card(
          color:selectedCardList== index?Colors.blue:Colors.amber,
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
