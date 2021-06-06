import 'package:flutter/material.dart';
import 'package:xlo_app/app/core/app_theme.dart';
import 'package:xlo_app/app/screens/navigation/navigation_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XLO',
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      home: NavigationScreen(),
    );
  }
}
