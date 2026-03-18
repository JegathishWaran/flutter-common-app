import 'package:comman_app/components/hellow_page.dart';
import 'package:comman_app/components/message_page.dart';
import 'package:flutter/material.dart';

class TabBar_data extends StatelessWidget {
  const TabBar_data({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("S T A A B")),
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home, color: Colors.pink)),
                Tab(icon: Icon(Icons.settings, color: Colors.brown)),
                Tab(icon: Icon(Icons.account_box, color: Colors.amberAccent)),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [HellowPage(), MessagePage(), HellowPage()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
