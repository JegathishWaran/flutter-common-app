import 'package:flutter/material.dart';

class ColoumRow extends StatelessWidget {
  const ColoumRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(width: 200,  height: 200,  color: Colors.deepPurple[200],),
          Container(width: 200, height: 200,  color: Colors.deepPurple[400],),
          Container(width: 200, height: 200,  color: Colors.deepPurple[600],),
          ],
      ),
    );
  }
}