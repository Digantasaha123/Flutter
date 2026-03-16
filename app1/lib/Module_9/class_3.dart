import 'package:app1/Module_9/navigation.dart';
import 'package:flutter/material.dart';

class class3 extends StatelessWidget {
  const class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Advance Navigation Techniques")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/stack');
            },
            child: Text("Stack"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Text("Home"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/listview');
            },
            child: Text("List View"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/alert');
            },
            child: Text("Alert"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/navigation');
            },
            child: Text("Navigation"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/class3');
            },
            child: Text("Class 3"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder:
                      (context, animation, secondaryAnimation) => Navigation(),
                  transitionsBuilder: (
                    Context,
                    animation,
                    secondaryAnimation,
                    child,
                  ) {
                    const begin = Offset(1.0, 0);
                    const end = Offset.zero;
                    const curve = Curves.ease;

                    var tween = Tween(
                      begin: begin,
                      end: end,
                    ).chain(CurveTween(curve: curve));
                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );
                  },
                ),
              );
            },
            child: Text('Class3 2'),
          ),
        ],
      ),
    );
  }
}
