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
          "Container Color Change",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: Colors.pink),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 500,),
          Container(
            height: 100,
            width: 100,
            color: changC?Colors.pink:Colors.black,
          ),
        ],
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
