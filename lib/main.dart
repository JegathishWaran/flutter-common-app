import 'package:comman_app/pages/coloum_row.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ColoumRow(),
        theme: ThemeData(primaryColor: Colors.yellow),
      );
  }



}
