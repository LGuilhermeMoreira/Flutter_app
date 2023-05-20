import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final String key = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "iai joje",
            style: TextStyle(color: Colors.blue),
          ),
        ),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.red,
        child: Text(""),
      ),
    );
  }
}
