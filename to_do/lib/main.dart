import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'models/item.dart';
import 'dart:convert';

void main() {
  runApp(const APP());
}

class APP extends StatelessWidget {
  const APP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ToDoList.io",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  List<Item> itens = [];

  HomePage() {
    itens = [];
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var textControler = TextEditingController();

  void add() {
    setState(() {
      if (!(textControler.text == "")) {
        widget.itens.add(
          Item(
            title: textControler.text,
            done: false,
          ),
        );
        textControler.clear();
        save();
      }
    });
  }

  void remove(int index) {
    setState(() {
      widget.itens.removeAt(index);
      save();
    });
  }

  Future load() async {
    var prefs = await SharedPreferences.getInstance();
    var data = prefs.getString("data");

    if (data != null) {
      Iterable decoded = jsonDecode(data);
      List<Item> result = decoded.map((e) => Item.fromJson(e)).toList();
      setState(() {
        widget.itens = result;
      });
    }
  }

  save() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('data', jsonEncode(widget.itens));
  }

  _HomePage() {
    load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar (contem title, leading, actions)
      appBar: AppBar(
        title: TextFormField(
          controller: textControler,
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
          decoration: InputDecoration(
              labelText: "add item",
              labelStyle: (TextStyle(color: Colors.black))),
        ),
        iconTheme: IconThemeData(),
      ),

      //body
      body: ListView.builder(
          itemCount: widget.itens.length,
          itemBuilder: ((BuildContext context, int index) {
            final item = widget.itens[index];
            return Dismissible(
              child: CheckboxListTile(
                title: Text(item.title!),
                value: item.done,
                onChanged: (value) {
                  setState(() {
                    item.done = value;
                    save();
                  });
                },
              ),
              key: Key(item.title!),
              background: Container(
                color: Colors.red.withOpacity(0.4),
              ),
              onDismissed: (direction) {
                remove(index);
              },
            );
          })),

      //floatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: add,
        backgroundColor: Colors.yellow,
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
