// import 'package:app1/flutter_class_3.dart';
// import 'package:app1/Module%208/class8_3.dart';
import 'package:app1/Module%208/class8_3_stack.dart';
import 'package:app1/Module%208/home.dart';
import 'package:app1/Module%208/list_view.dart';
import 'package:app1/Module_9/class_3.dart';
import 'package:app1/Module_9/navigation.dart';
import 'package:app1/Module_9/own_widget.dart';
import 'package:flutter/material.dart';
import 'alert.dart';
// import 'class8_2.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      // home: Navigation(),
      initialRoute: '/class3',
      routes: {
        '/stack': (context) => Module8Stack(),
        '/home': (context) => Home(),
        '/listview': (context) => ListV(phone: "01866328129"),
        '/alert': (context) => Alert(),
        '/navigation': (context) => Navigation(),
        '/class3': (context) => class3(),
      },

      debugShowCheckedModeBanner: false,
    );
  }
}
