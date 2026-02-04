import 'package:flutter/material.dart';
import 'list_view.dart';

class Module8class2 extends StatelessWidget {
  Module8class2({super.key});

  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
      // appBar: AppBar(title: Text("Module 8 class 2")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
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
            SizedBox(height: 20),
            SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: phoneController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your number";
                        } else if (value.length != 11) {
                          return "Please Enter correct Phone number";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: passController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your password";
                        } else if (value.length <= 6) {
                          return "Password is too weak (short)";
                        } else {
                          return null;
                        }
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // ScaffoldMessenger.of(context).showSnackBar(
                            //   SnackBar(
                            //     backgroundColor: Colors.blue,
                            //     content: Text("Login Successfull"),
                            //   ),

                            // );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ListV(phone : phoneController.text)),
                            );
                          }
                        },
                        child: Text("Submit"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
