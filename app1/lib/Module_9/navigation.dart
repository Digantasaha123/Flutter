import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        shadowColor: Colors.red,
        title: Text("Hello world", style: TextStyle(color: Colors.white)),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/profile.png"),
                    radius: 30,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Diganta Saha",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "SahaDiganta81@gmail.com",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
            ),
            ListTile(title: Text("Item 1"), onTap: () {}),
            Divider(),
            ListTile(title: Text("Item 2"), onTap: () {}),
            Divider(),
            ListTile(title: Text("Item 3"), onTap: () {}),
            Divider(),
          ],
        ),
      ),
    );
  }
}
