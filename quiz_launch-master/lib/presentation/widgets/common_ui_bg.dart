import 'package:flutter/material.dart';

class CommonUIBG extends StatelessWidget {
  final Widget widget;

  const CommonUIBG({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      // color: const Color.fromRGBO(16, 12, 140, 1),
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32), // Adjust the radius as needed
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32), // Same radius as Container
          ),
          child: this.widget,
        ),
      ),
    );
  }
}