import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Image Example'.toUpperCase()),
        backgroundColor: Colors.blueGrey,
      ),
      //body: Image(image: AssetImage( "images/umar.png"),)
      body: Center(
        child: Image.asset('images/umar.png', width: 400, height: 800)
        // Image.network(
        //   'https://image.tmdb.org/t/p/original/bSqpOGzaKBdGkBLmcm1JJIVryYy.jpg',
        //   width: 400,
        //   height: 800,
        //   fit: BoxFit.cover,
        //   ) ,
        // )
      )
      
    );
  }
}