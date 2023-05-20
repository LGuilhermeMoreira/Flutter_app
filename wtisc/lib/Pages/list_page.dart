import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<HomePage> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("meu primeiro app"),
        centerTitle: true,
      ),
      body: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            Text(
              "Contador",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            Text(
              num.toString(),
              style: TextStyle(fontSize: 25, color: Colors.deepPurple),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              num++;
            });
          },
          child: //Text(
              //   "+",
              //   style: TextStyle(fontSize: 30),
              // ),
              Icon(Icons.add)),
    );
  }
}
