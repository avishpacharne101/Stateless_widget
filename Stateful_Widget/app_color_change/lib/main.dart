import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeColor(),
    );
  }
}

class ChangeColor extends StatefulWidget {
  const ChangeColor({super.key});

  @override
  State createState() => _ChangeColor();
}

class _ChangeColor extends State<ChangeColor> {
  bool changC = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "App color Change",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: changC?Colors.amber:Colors.pink,
      ),
      body:
       
          Container(
          color:changC?Colors.pink:Colors.amber,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (changC == true) {
            changC = false;
          } else {
            changC = true;
          }
          setState(() {});
        },
        child: const Icon( Icons.home),
      ),
    );
  }
}
