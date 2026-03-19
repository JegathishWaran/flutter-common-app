import 'package:flutter/material.dart';

class GestureDetector_ extends StatefulWidget {
  const GestureDetector_({super.key});

  @override
  State<GestureDetector_> createState() => _GestureDetector_State();
}

class _GestureDetector_State extends State<GestureDetector_> {
  int count_ = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Tapped $count_ Time",  style: TextStyle(fontSize: 34),),
            GestureDetector(
              onTap: () {
                setState(() {
                  count_++;
                });
              },
              child: Container(
                padding: EdgeInsets.all(15),
                color: Colors.greenAccent,
                child: Text("TAP HERE")),
            )
          ],
        ),
      ),
    );
  }
}