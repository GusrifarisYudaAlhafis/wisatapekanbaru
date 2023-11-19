import 'package:flutter/material.dart';
import 'package:wisatapekanbaru/screen/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Pekanbaru',
      theme: ThemeData(),
      home: const MainScreen()
    );
  }
}