// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class StackAndPositionedExample extends StatelessWidget {
  const StackAndPositionedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack and Positioned Example'),
          centerTitle: true,
          backgroundColor: Colors.black38,
        ),
        backgroundColor: Colors.grey.shade800,
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            constraints: BoxConstraints.expand(width: 330, height: 450),
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.white24,
                      offset: Offset(0, 2),
                      spreadRadius: 5,
                      blurRadius: 10),
                ],
                image: DecorationImage(
                    image: AssetImage('images/umar.png'), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Stack(
              children: [
                Text(
                  'Editors Choice',
                  style: TextStyle(color: Colors.white70, fontSize: 18),
                ),
                Positioned(
                  top: 20.0,
                  child: Text(
                    'The Art of Making Coffee',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 20,
                  child: Text(
                    'Learn to make the perfect Coffee',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Text(
                    'Coding with Tea',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
