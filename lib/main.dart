import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StackPage(),
    );
  }
}

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          for (int i = 0; i < 5; i++)
            Positioned(
              left: Random().nextInt(300).toDouble(),
              top: Random().nextInt(300).toDouble(),
              child: GestureDetector(
                onTap: () {
                  print("TAP");
                },
                child: Image.asset(
                  'assets/marg.png',
                  height: 100,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
