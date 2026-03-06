import 'package:comman_app/pages/partice.dart';
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
        home: Partice(),
        theme: ThemeData(primaryColor: Colors.yellow),
      );
  }



}
