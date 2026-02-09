import 'package:flutter/material.dart';

class OwnWidget extends StatelessWidget {
  const OwnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 280,
        height: 200,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color.fromARGB(149, 158, 158, 158),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
              children: [
                ClipRect(
                  // clipBehavior: Clip.hardEdge,
                  // child: Image.asset("assets/youtube.png"),
                  child: Stack(
                    children: [
                      Image.asset("assets/youtube.png",
                      // height: 200,
                      )
                    ],
                  ),
                )
              ],
          ),
        ),
          ), 
          
        ],
      ),
    );
  }
}