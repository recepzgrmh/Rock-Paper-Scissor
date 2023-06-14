import 'package:flutter/material.dart';
import 'press.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(padding: const EdgeInsets.only(top:100),
        decoration: const BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,colors: [Color.fromARGB(255, 191, 45, 204), Color.fromARGB(255, 109, 21, 117)])),
          child: const Center(
            child: Column(
              children: [
                RotatedBox(quarterTurns: 2,child: Press(),),
                Press(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
