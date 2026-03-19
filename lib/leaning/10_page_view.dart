import 'package:comman_app/components/hellow_page.dart';
import 'package:comman_app/components/message_page.dart';
import 'package:flutter/material.dart';

class PageViewData extends StatelessWidget {

  
  PageViewData({super.key});
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          HellowPage(),
          MessagePage(),
          HellowPage(),
          MessagePage(),
          HellowPage(),
          MessagePage(),
          HellowPage(),
          MessagePage(),
        ],
      ),
    );
  }
}