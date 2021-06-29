import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:xlo_app/app/screens/home/home_screen.dart';
import 'package:xlo_app/app/screens/navigation/navigation_controller.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final PageController pageController = PageController();

  final NavigatorController controller = GetIt.I<NavigatorController>();

  @override
  void initState() {
    super.initState();

    reaction((_) => controller.currentPage,
        (int page) => pageController.jumpToPage(page));
  }

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
