import 'package:flutter/material.dart';

class FlutterClass3 extends StatelessWidget {
  const FlutterClass3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 253, 253),
      appBar: AppBar(
        // backgroundColor: Colors.grey.withOpacity(0.4)
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text(
          "App",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {},
              child: Text("Elevated Btn"),
            ),
            SizedBox(
              height: 50,
              // width: 200,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 172, 57, 49),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: Text("Elevated Button Under Sized Box"),
              ),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                "Outlined Btn",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Text(
                "Text Btn",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Icon(
              Icons.phone_android_outlined,
              size: 50,
              color: Colors.amber[900],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete_forever_rounded),
              color: Colors.red.shade900,
              iconSize: 65,
            ),
            GestureDetector(
              onTap: () {
                print("Text Clicked");
              },
              child: Text(
                "Text + Gesture Detector",
                style: TextStyle(fontSize: 30),
              ),
            ),

            InkWell(
              onTap: () {
                print("Inkwell tapped");
              },
              child: Text("InkWell", style: TextStyle(fontSize: 50)),
            ),
            Padding(
              // padding: EdgeInsets.all(50),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),

              child: Text(
                "This is padding Text",
                style: TextStyle(fontSize: 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
