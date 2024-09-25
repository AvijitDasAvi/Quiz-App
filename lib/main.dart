import 'package:flutter/material.dart';
import 'package:quiz_app/pages/question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz-App',
      home: Question(),
    );
  }
}
