import 'dart:math';

import 'package:flutter/material.dart';

class RandomNumberGeneratorExample extends StatefulWidget {
  const RandomNumberGeneratorExample({Key? key}) : super(key: key);

  @override
  State<RandomNumberGeneratorExample> createState() =>
      _RandomNumberGeneratorExampleState();
}

class _RandomNumberGeneratorExampleState
    extends State<RandomNumberGeneratorExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Number Generator Example'.toUpperCase()),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Random value is: ${getNumber()}'),
            ElevatedButton(
              child: Text('Generate'),
              onPressed: () {
                setState(() {
                  getNumber();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

int getNumber() {
  //Random random = Random();
  //var number = random.nextInt(100);
  //return number;
  return Random().nextInt(100);
}
