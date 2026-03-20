import 'package:flutter/material.dart';

class CoolAnimatedIcons extends StatefulWidget {
  const CoolAnimatedIcons({super.key});

  @override
  State<CoolAnimatedIcons> createState() => _CoolAnimatedIconsState();
}

class _CoolAnimatedIconsState extends State<CoolAnimatedIcons> with SingleTickerProviderStateMixin{

  late final  AnimationController _animationController;

  @override
  void initState() {

    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

    @override
  void dispose() {
    _animationController.dispose(); // must
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: AnimatedIcon(icon: 
        AnimatedIcons.pause_play, progress: _animationController),
      )
    );
  }
}