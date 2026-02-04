import 'package:flutter/material.dart';

class ListV extends StatefulWidget {
  final phone;
  const ListV({super.key, required this.phone});

  @override
  State<ListV> createState() => ListVState();
}

class ListVState extends State<ListV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View")),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              trailing: Icon(Icons.call, color: Colors.blue),
              title: Text("Diganta Saha"),
              subtitle: Text(widget.phone),
            ),
          );
        },
      ),
    );
  }
}
