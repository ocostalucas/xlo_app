import 'package:parse_server_sdk/parse_server_sdk.dart';

class AppController {
  static Future<void> initializeParse() async {
    await Parse().initialize(
      'mViuDULtTWdkKcmjHJ5g1NlfZoIPjxVZ9gsH9INj',
      'https://parseapi.back4app.com/',
      clientKey: '3TmZtj3HgHoztmtf2cdM2s42570g8z6NyS7oqeIc',
      autoSendSessionId: true,
      debug: true,
    );
  }
}
