import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: const Text("Ceter Text"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: const Center(
          child:  Text('Hello',style: TextStyle(fontSize: 40),),
        ),
      ),
    );
  }
}
