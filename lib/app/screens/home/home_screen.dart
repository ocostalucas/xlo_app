import 'package:flutter/material.dart';
import 'package:xlo_app/app/shared/components/custom_drawer/custom_drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        drawer: CustomDrawerWidget(),
        appBar: AppBar(),
      ),
    );
  }
}
