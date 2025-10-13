import 'package:flutter/material.dart';

class FlutterClass3 extends StatelessWidget {
  const FlutterClass3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 26, 26),
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 20, 20, 20)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("Submit Den", style: TextStyle(color: Colors.indigo)),
            
              
            ),
          ],
        ),
      ),
    );
  }
}
