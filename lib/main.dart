import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:xlo_app/app/app_widget.dart';
import 'package:xlo_app/app/screens/navigation/navigation_controller.dart';

import 'app/app_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppController.initializeParse();
  setupLocators();
  runApp(AppWidget());
}

void setupLocators() {
  GetIt.I.registerSingleton<NavigatorController>(NavigatorController());
}
