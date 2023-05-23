import "package:flutter/material.dart";

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _Calculator();
}

class _Calculator extends State<Calculator> {
  String result = "";
  List<String> aplication = [];

  String trataString(String path) {
    aplication = path.split(" ");
    late num resultado;

    if (aplication[1] == "+") {
      resultado = num.parse(aplication[0]) + num.parse(aplication[2]);
    } else if (aplication[1] == "-") {
      resultado = num.parse(aplication[0]) - num.parse(aplication[2]);
    } else if (aplication[1] == "*") {
      resultado = num.parse(aplication[0]) * num.parse(aplication[2]);
    } else {
      num a = num.parse(aplication[0]);
      num b = num.parse(aplication[2]);

      resultado = a / b;
    }
    return resultado.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(result),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: Container(
          color: Color.fromARGB(255, 0, 11, 17),
          child: Column(children: [
            SizedBox(height: 60),
            Row(
              children: [
                SizedBox(width: 25),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = "";
                    });
                  },
                  child: Center(
                      child: Text(
                    "CE",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 11, 17),
                      fontSize: 20,
                    ),
                  )),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orangeAccent)),
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (result.length == 0) {
                        result += "0.";
                      } else {
                        result += ".";
                      }
                    });
                  },
                  child: Center(
                      child: Text(
                    ".",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 11, 17),
                      fontSize: 20,
                    ),
                  )),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orangeAccent)),
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (result.length != 0) {
                        result += " * ";
                      }
                    });
                  },
                  child: Center(
                      child: Text(
                    "*",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 11, 17),
                      fontSize: 20,
                    ),
                  )),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orangeAccent)),
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (result.length != 0) {
                        result += " / ";
                      }
                    });
                  },
                  child: Center(
                      child: Text(
                    "/",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 11, 17),
                      fontSize: 20,
                    ),
                  )),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orangeAccent)),
                ),
              ],
            ),
            SizedBox(height: 80),
            Row(
              children: [
                SizedBox(width: 25),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result += "1";
                    });
                  },
                  child: Center(
                      child: Text(
                    "1",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 11, 17),
                      fontSize: 20,
                    ),
                  )),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orangeAccent)),
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result += "2";
                    });
                  },
                  child: Center(
                      child: Text(
                    "2",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 11, 17),
                      fontSize: 20,
                    ),
                  )),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orangeAccent)),
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result += "3";
                    });
                  },
                  child: Center(
                      child: Text(
                    "3",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 11, 17),
                      fontSize: 20,
                    ),
                  )),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orangeAccent)),
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (result.length != 0) {
                        result += " + ";
                      }
                    });
                  },
                  child: Center(
                      child: Text(
                    "+",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 11, 17),
                      fontSize: 20,
                    ),
                  )),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orangeAccent)),
                ),
              ],
            ),
            SizedBox(height: 80),
            Row(
              children: [
                SizedBox(width: 25),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result += "4";
                    });
                  },
                  child: Center(
                      child: Text(
                    "4",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 11, 17),
                      fontSize: 20,
                    ),
                  )),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orangeAccent)),
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result += "5";
                    });
                  },
                  child: Center(
                      child: Text(
                    "5",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 11, 17),
                      fontSize: 20,
                    ),
                  )),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orangeAccent)),
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result += "6";
                    });
                  },
                  child: Center(
                      child: Text(
                    "6",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 11, 17),
                      fontSize: 20,
                    ),
                  )),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orangeAccent)),
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (result.length != 0) {
                        result += " - ";
                      }
                    });
                  },
                  child: Center(
                      child: Text(
                    "-",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 11, 17),
                      fontSize: 20,
                    ),
                  )),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orangeAccent)),
                ),
              ],
            ),
            SizedBox(height: 80),
            Row(
              children: [
                SizedBox(width: 25),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result += "7";
                    });
                  },
                  child: Center(
                      child: Text(
                    "7",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 11, 17),
                      fontSize: 20,
                    ),
                  )),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orangeAccent)),
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result += "8";
                    });
                  },
                  child: Center(
                      child: Text(
                    "8",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 11, 17),
                      fontSize: 20,
                    ),
                  )),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orangeAccent)),
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result += "9";
                    });
                  },
                  child: Center(
                      child: Text(
                    "9",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 11, 17),
                      fontSize: 20,
                    ),
                  )),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orangeAccent)),
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result += "0";
                    });
                  },
                  child: Center(
                      child: Text(
                    "0",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 11, 17),
                      fontSize: 20,
                    ),
                  )),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orangeAccent)),
                ),
              ],
            ),
            SizedBox(height: 80),
            Container(
              height: 40,
              width: 100,
              color: Colors.red,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = trataString(result);
                  });
                },
                child: Text(
                  "=",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 11, 17),
                    fontSize: 20,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.greenAccent)),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 40,
              width: 100,
              color: Colors.red,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    String local = "";
                    for (var i = 0; i < result.length - 1; i++) {
                      local += result[i];
                    }
                    result = local;
                  });
                },
                child: Text(
                  "X",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 11, 17),
                    fontSize: 20,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.greenAccent)),
              ),
            ),
          ]),
        ));
  }
}
