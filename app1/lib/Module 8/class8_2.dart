import 'dart:ffi';

import 'package:flutter/material.dart';

class Module8class2 extends StatelessWidget {
  const Module8class2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
      // appBar: AppBar(title: Text("Module 8 class 2")),
      body: Column(
        children: [
          // Center(
          //   child: Image.asset(height: 100, width: 100, "assets/facebook.png"),
          // ),
          // Image.network(
          //   height: 200,
          //   width: 200,
          //   "https://www.citypng.com/public/uploads/preview/horizontal-facebook-full-logo-symbol-text-7017516947921451plrdm7b4k.png",
          // ),
          Center(
            child: Image.asset(height: 100, width: 200, "assets/youtube.png"),
          ),
          Text(
            "Login with email and password",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Phone Number",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                
              ),
            ),
          ),
        SizedBox( height: 10),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
        )
        ],
      ),
    );
  }
}
