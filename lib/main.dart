import 'package:flutter/material.dart';
import 'package:flutter_training/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
