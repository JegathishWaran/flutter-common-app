import 'package:flutter/material.dart';

class Partice extends StatelessWidget {
  const Partice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amberAccent,
      body: Center(
        child: Container(
          
          width: 250,
          height: 250,
          // padding: EdgeInsets.all(80),
          alignment: Alignment.center,
          decoration:BoxDecoration(
            color: Colors.amberAccent,
            // borderRadius: BorderRadius.circular(30)
            border: Border.all(
              width: 1
            ),
            shape: BoxShape.circle
          ),
          
         child: Text("."),
        ),
      ),

    );
  }
}