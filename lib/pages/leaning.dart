import 'package:flutter/material.dart';

class LeaningContainer extends StatelessWidget {
  const LeaningContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          // alignment: Alignment(.2,.9),
          // alignment: Alignment.bottomRight,
          // padding: EdgeInsets.all(20),
          width: 250,
          height: 250,
          // if using decorator dod not use color out side.
          // color: Colors.blue,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(50),
            // color: Colors.yellow,
            // shape: BoxShape.circle,
            // border: Border.all(
            //   color: Colors.black,
            //   width: 10
            // ),
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0
              )
            ]

          ),
          // child: Text("Hello"),
        ),
      ),
    );
  }
}