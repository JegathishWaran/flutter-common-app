import 'package:flutter/material.dart';

class Expanded_widged extends StatelessWidget {
  const Expanded_widged({super.key});

  // Expanded is cover the balance space
  // In Expanded we can use the flex
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.deepPurple,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container( 
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
            color: Colors.blueAccent,
            ),
          ),
          Expanded(
          flex: 5,  
          child: Container(
          color: Colors.yellowAccent,
          ))
        ],
      ),
    );
  }
}
