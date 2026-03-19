import 'package:flutter/material.dart';

class GridView_ extends StatelessWidget {
  const GridView_({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: GridView.count(
    //     crossAxisCount: 5,
    //     children: [
    //       Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Container(
    //           width: 10,
    //           height: 10,
    //           color: Colors.amber,
    //         ),
    //       ),
    //        Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Container(
    //           width: 10,
    //           height: 10,
    //           color: Colors.amber,
    //         ),
    //       ),
    //        Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Container(
    //           width: 10,
    //           height: 10,
    //           color: Colors.amber,
    //         ),
    //       ),
    //        Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Container(
    //           width: 10,
    //           height: 10,
    //           color: Colors.amber,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
    return  Scaffold(
      body: GridView.builder(
      // physics: NeverScrollableScrollPhysics(),
      itemCount: 100,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5), 
      itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: 5,
              height: 5,
              color: Colors.red,
          ),
        );
      }),
    );
  }
}