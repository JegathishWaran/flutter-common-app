import 'package:flutter/material.dart';

class SimpleSlider extends StatefulWidget {
  const SimpleSlider({super.key});

  @override
  State<SimpleSlider> createState() => _SimpleSliderState();
}

class _SimpleSliderState extends State<SimpleSlider> {

  double _currentlyValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Text((_currentlyValue*5).toString()),
          ),
          Slider(value: _currentlyValue,
            min: 0,
            max: 10,
            divisions: 4,
          
           onChanged: (value){
            setState(() {
              _currentlyValue=value;
            });
          })
        ],
      ),
    );
  }
}