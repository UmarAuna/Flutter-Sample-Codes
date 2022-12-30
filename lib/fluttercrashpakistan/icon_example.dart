import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconExample extends StatelessWidget {
  const IconExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Example'.toUpperCase()),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Center(
            child: Icon(
             Icons.alt_route_rounded,
             size: 100,
             color: Colors.lightGreenAccent,
             ),
          ),
          Center(
            child: IconButton(
              icon: Icon(
               Icons.alt_route_rounded,
               color: Colors.lightGreenAccent,
               ),
               onPressed: (){},
               iconSize: 100,
               splashColor: Colors.white,
               highlightColor: Colors.red,
            ),
          ),
           Center(
            child: IconButton(
              icon: Icon(FontAwesomeIcons.css3),
               onPressed: (){},
               iconSize: 80,
               splashColor: Colors.white,
               highlightColor: Colors.red,
            ),
          ),
        ],
      ) ,
      );
  }
}