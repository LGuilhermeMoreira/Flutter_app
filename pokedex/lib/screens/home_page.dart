import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;

class PokePage extends StatefulWidget {
  const PokePage({super.key});

  @override
  State<PokePage> createState() => _PokePageState();
}

class _PokePageState extends State<PokePage> {
  //var pokemon = await http

  Widget image(int i) {
    return Image.network(
      "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/$i.png",
      fit: BoxFit.fill,
      width: 100,
      height: 100,
    );
  }

  int initial = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Poke Page'),
        centerTitle: true,
        backgroundColor: Colors.red,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              image(initial),
              const SizedBox(height: 16.0),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text('Back'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white,
                  )),
              //const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (initial > 1) {
                      initial = -1;
                    }
                  });
                },
                child: const Text('Next'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (initial > 151) {
                      initial += 1;
                    }
                  });
                },
                child: Text("Shiny Form"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
