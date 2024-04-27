import 'package:flutter/material.dart';
import './Screens/CommonScreens/choose_language_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Language App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LanguageScreen()
    );
  }
}
