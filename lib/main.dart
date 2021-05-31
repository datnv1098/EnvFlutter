import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:test_env/page2.dart';

Future main() async {
  await dotenv.load(
      fileName:
          "assets/.env"); // mergeWith optional, you can include Platform.environment for Mobile/Desktop app

  runApp(MyApp());
}
