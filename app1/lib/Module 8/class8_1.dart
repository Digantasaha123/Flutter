import 'package:flutter/material.dart';

class Module8class1 extends StatelessWidget {
  const Module8class1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Module 8 class 1",
          style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.check),
                hintText: "Diganta Saha",
                labelText: "Enter Your name",
                labelStyle: TextStyle(fontSize: 18, color: Colors.blue[900]),
                hintStyle: TextStyle(color: Colors.black87),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.check),
                hintText: "01866328129",
                labelText: "Enter Your Number ",
                labelStyle: TextStyle(fontSize: 18, color: Colors.blue[900]),
                hintStyle: TextStyle(color: Colors.black87),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                hintText: "eg: lkfm%hb253 ",
                labelText: "Enter password",
                labelStyle: TextStyle(fontSize: 18, color: Colors.blue[900]),
                hintStyle: TextStyle(color: Colors.black87),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          Card(
            child: SizedBox(
              height: 40,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  if (phoneController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Enter Your Phone Number")),
                    );

                    // print("Enter Your Phone Number");
                  } else if (phoneController.text.length != 11) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Enter  valid Phone Number")),
                    );
                    print("Length must be at least 11");
                  }
                  if (nameController.text.isEmpty) {
                    print("Enter Your  name");
                  }
                  if (passwordController.text.isEmpty) {
                    print("Enter Password");
                  }
                },
                child: Text("Submit"),
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 40,
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                passwordController.clear();
                phoneController.clear();
                nameController.clear();
              },

              child: Text("Clear"),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 50,
            width: 220,
            alignment: Alignment.center,
            // color: Colors.green[500],
            decoration: BoxDecoration(
              color: Colors.green[400],
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 2, color: Colors.black38),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(10, 10),
                  blurRadius: 10,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Text("Container Example"),
          ),
        ],
      ),
    );
  }
}
