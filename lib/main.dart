import 'package:flutter/material.dart';
import 'package:xlo_app/app/app_widget.dart';

import 'app/app_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppController.initializeParse();
  runApp(AppWidget());
}
