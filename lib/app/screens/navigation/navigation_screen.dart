import 'package:flutter/material.dart';
import 'package:xlo_app/app/screens/home/home_screen.dart';

class NavigationScreen extends StatelessWidget {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeScreen(),
          Container(color: Colors.black),
          Container(color: Colors.blue),
          Container(color: Colors.cyan),
          Container(color: Colors.yellow),
        ],
      ),
    );
  }
}
