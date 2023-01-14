import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SI calculator",
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String p = '', t = '', r = '', result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "SI Calculator",
        ),
        backgroundColor: mycolor,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
          SizedBox(
            height: 25,
          ),
          TextField(
            onChanged: (val) {
              p = val;
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "Enter Principle",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          TextField(
            onChanged: (val) {
              t = val;
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "Enter time(Years)",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          TextField(
            onChanged: (val) {
              r = val;
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "Enter rate %",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              side: BorderSide(color: Colors.red),
            ),
            height: 51,
            color: mycolor,
            onPressed: () {
              setState(() {
                result =
                    (double.parse(p) * double.parse(t) * double.parse(r) / 100)
                        .toString();
              });
            },
            child: Text(
              "Calculate",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              "The result is $result.",
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          )
        ]),
      ),
    );
  }
}

const mycolor = Color(0xffE21717);
