import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ask me anything'),
            backgroundColor: Colors.blue[900],
          ),
          body: BallsApp(),
        ),
      ),
    );

class BallsApp extends StatefulWidget {
  const BallsApp({super.key});

  @override
  State<BallsApp> createState() => _BallsAppState();
}

class _BallsAppState extends State<BallsApp> {
  int randomBall = 1;

  void randomse() {
    setState(() {
      randomBall = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: [
          SizedBox(
            height: 180,
          ),
          TextButton(
            onPressed: randomse,
            child: Image.asset('images/ball$randomBall.png'),
          ),
        ],
      ),
    );
  }
}
