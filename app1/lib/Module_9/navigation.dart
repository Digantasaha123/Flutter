import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          bottom:  TabBar(
            tabs: [
             Tab(text: "home", icon: Icon(Icons.home),),
             Tab(text: "phone", icon: Icon(Icons.phone),),
             Tab(text: "favourites", icon: Icon(Icons.star_border_sharp),),
            ],
          ),
          backgroundColor: Colors.blue,
          shadowColor: Colors.red,
          title: Text("Hello world", style: TextStyle(color: Colors.white)),
        ),
      body: TabBarView(
        children: [
          Container(
            height: 200,
            color: const Color.fromARGB(255, 41, 195, 164),
            child: Center(
              child: Text("Home",
              style: TextStyle(
                fontSize: 20,
                
              ),),
            ),
          ),Container(
            height: 200,
            color: Colors.lightBlueAccent,
            child: Center(
              child: Text("Phone",
              style: TextStyle(
                fontSize: 20,
                
              ),),
            ),
          ),Container(
            height: 200,
            color: const Color.fromARGB(221, 209, 113, 113),
            child: Center(
              child: Text("Favourites",
              style: TextStyle(
                fontSize: 20,
                
              ),),
            ),
          ),
          
        ],
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
             
              ListTile(title: Text("Home"), onTap: () {}),
              Divider(),
              ListTile(
                dense: true,
                title: Text("Item 1"),
                 onTap: () {}),
              Divider(),
              ListTile(title: Text("Item 2"), onTap: () {}),
              Divider(),
              ListTile(title: Text("Item 3"), onTap: () {}),
              Divider(),
               TextButton(onPressed: (){}, 
              child: Text("Logout")),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
