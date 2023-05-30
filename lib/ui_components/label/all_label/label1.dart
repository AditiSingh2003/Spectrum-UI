import 'package:flutter/material.dart';

class label extends StatefulWidget {
  const label({Key? key}) : super(key: key);

  @override
  State<label> createState() => _labelState();
}

class _labelState extends State<label> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(8.0),
          child: const TextField(
            decoration: InputDecoration(
              label: Text("Enter name"),
              labelStyle: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),
              floatingLabelStyle: TextStyle(
                color: Colors.blue,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              floatingLabelAlignment: FloatingLabelAlignment.start,
            ),
          ),
        ),
      ),
    );
  }
}
