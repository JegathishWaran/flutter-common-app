import 'package:comman_app/components/todo_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("TO DO"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          TodoTile(
            taskName: "Make it today",
            taskCompleted: false,
            onChange: (pk) {},
          ),
        ],
      ),
    );
  }
}
