import 'package:flutter/material.dart';

class Module8Stack extends StatelessWidget {
  const Module8Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Stack")),
      body: Column(
        children: [
          Stack(
            children: [
              Container(color: Colors.red, height: 200, width: 200),
              Container(color: Colors.green, height: 100, width: 200),
              Container(color: Colors.red, height: 200, width: 200),
            ],
          ),
        ],
      ),
    );
  }
}
