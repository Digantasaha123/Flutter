import 'package:flutter/material.dart';

class Module8_class3 extends StatelessWidget {
  const Module8_class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid view"), centerTitle: true),
      // body: GridView.count(
      //   crossAxisCount: 3,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children:
      //   // Container(color: Colors.red, height: 200, width: 200),
      //   // Container(color: Colors.blue, height: 200, width: 200),
      //   // Container(color: Colors.orange, height: 200, width: 200),
      //   // Container(color: Colors.purple, height: 200, width: 200),
      //   List.generate(20, (index) {
      //     return Card(
      //       elevation: 10,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(30),
      //       ),
      //       color: Colors.green,
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(
      //             Icons.personal_injury_sharp,
      //             color: Colors.white,
      //             size: 60,
      //           ),
      //           Text(
      //             "Cash Out",
      //             style: TextStyle(color: Colors.white, fontSize: 20),
      //           ),
      //         ],
      //       ),
      //     );
      //   }),
      // ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.personal_injury_sharp,
                  color: Colors.white,
                  size: 60,
                ),
                SizedBox(height: 5),
                Text(
                  index.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
