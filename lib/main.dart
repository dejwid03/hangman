import 'package:flutter/material.dart';
import 'package:hangman/di/di.dart';
import 'package:hangman/pages/hangman_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

void main() {
  setupServiceLocatorForHangmanApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: const HangmanPage(),
    );
  }
}
