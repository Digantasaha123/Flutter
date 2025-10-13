import 'package:app2/flutter_class3.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: "Batch 11 Flutter",
      home: FlutterClass3(),
    );
  }
}

