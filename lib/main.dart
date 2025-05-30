import 'package:flutter/material.dart';
import 'package:study_mate_application/pages/first_welcome_screen.dart';
// import 'package:study_mate_application/pages/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstWelcomeScreen(),
    );
  }
}
