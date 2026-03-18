import 'package:comman_app/components/hellow_page.dart';
import 'package:comman_app/components/message_page.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List<Widget> _pages = [
    HellowPage(),
    MessagePage(),
    Center(child: Text("Setting", style: TextStyle(fontSize: 54))),
    Center(child: Text("Account", style: TextStyle(fontSize: 54))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        title: Text('STAAN'),
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.share))],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.blueAccent,
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text("Staan", style: TextStyle(fontSize: 36)),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Page 1", style: TextStyle(fontSize: 20)),
                onTap: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => HellowPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.holiday_village),
                title: Text("page 2", style: TextStyle(fontSize: 20)),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MessagePage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: navigateBottomBar,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "message"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "setting"),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            label: "account",
          ),
        ],
      ),
    );
  }
}
