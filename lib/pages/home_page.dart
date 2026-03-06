import 'package:comman_app/components/todo_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  List toDolist = [["Make Cake", false], ['Make tea', false]];

  void checBoxChange(bool? value, int index){

    setState(() {
      toDolist[index][1] = !toDolist[index][1];
    });
  }


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
      body: ListView.builder(
        itemCount: toDolist.length,
        itemBuilder:(context, index) {
          return TodoTile(
            taskName: toDolist[index][0],
            taskCompleted: toDolist[index][1],
            onChange: (pk) {checBoxChange(pk, index);},
          );
        },
      ),
    );
  }
}
