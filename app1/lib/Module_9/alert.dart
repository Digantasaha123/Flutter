// import 'dart:ffi';

import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    void showAlertDialog() {
      showDialog(
        barrierDismissible: true,
        context: context,
        builder:
            (context) => AlertDialog(
              title: Text("Title for Dialog"),
              // backgroundColor: Colors.red,
              content: Text("Are you sure about this?"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel", style: TextStyle(color: Colors.red)),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Submit", style: TextStyle(color: Colors.green)),
                ),
              ],
            ),
      );
    }

    void showAlertDialogwithIcon() {
      showDialog(
        barrierDismissible: true,
        context: context,
        builder:
            (context) => AlertDialog(
              title: Text("Installation Block"),
              backgroundColor: const Color.fromARGB(255, 127, 182, 212),

              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Icon(Icons.warning, color: Colors.red, size: 40),
                      SizedBox(width: 5),
                      Text("Warning"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Officia, dolorem?",
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("OK"),
                ),
              ],
            ),
      );
    }

    void showSimpleDialog() {
      showDialog(
        barrierDismissible: true,
        context: context,
        builder:
            (context) => SimpleDialog(
              title: Text("Simple Dialog"),
              children: [
                SimpleDialogOption(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Option 1"),
                  ),
                ),
                SimpleDialogOption(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Option 2"),
                  ),
                ),
                SimpleDialogOption(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Option 3"),
                  ),
                ),
              ],
            ),
      );
    }

    void showBottomSheetAlert() {
      showModalBottomSheet(
        context: context,
        builder:
            (context) => Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,

                children: [
                  Text("Choose an option"),
                  ListTile(title: Text('Option 1')),
                  ListTile(
                    title: Text('Option 2'),
                    onTap: () {},
                    onLongPress: () {
                      print('Long Press Done');
                    },
                  ),
                  ListTile(title: Text('Option 3')),
                  ListTile(title: Text('Option 4')),
                  ListTile(title: Text('Option 5')),
                  ListTile(title: Text('Option 6')),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Asol color (Real color)
                      foregroundColor: Colors.white, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          5,
                        ), // Gomira (Serious) rectangular look
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Option 7"),
                  ),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Asol color (Real color)
                        foregroundColor: Colors.white, // Text color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            5,
                          ), // Gomira (Serious) rectangular look
                        ),
                      ),
                      onPressed: () {},
                      child: Text("Option 8"),
                    ),
                  ),
                ],
              ),
            ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text("Alert"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              height: screenSize.height * 0.2,
              width: screenSize.width * 0.5,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Asol color (Real color)
                foregroundColor: Colors.white, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    5,
                  ), // Gomira (Serious) rectangular look
                ),
              ),
              onPressed: () {
                showAlertDialog();
              },
              child: Text("Alert Dialoge"),
            ),

            OutlinedButton(
              onPressed: () {
                showAlertDialogwithIcon();
              },
              child: Text("Alert Dialoge icon"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Asol color (Real color)
                foregroundColor: Colors.white, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    5,
                  ), // Gomira (Serious) rectangular look
                ),
              ),
              onPressed: () {
                showSimpleDialog();
              },
              child: Text("Simple Dialog"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Asol color (Real color)
                foregroundColor: Colors.white, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                showBottomSheetAlert();
              },
              child: Text("Bottom Sheet "),
            ),
          ],
        ),
      ),
    );
  }
}
