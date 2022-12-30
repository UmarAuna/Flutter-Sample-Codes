import 'package:flutter/material.dart';

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      // extendBodyBehindAppBar: true ,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed:() {},),
        title: Text('AppBar Example'.toUpperCase()),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart), onPressed:() {},),
          IconButton(icon: Icon(Icons.shop), onPressed:() {},),
          // IconButton(icon: Icon(Icons.markunread), onPressed:() {},),
         // IconButton(icon: Icon(Icons.home), onPressed:() {},),
        ],
        elevation: 0,
        // titleSpacing: 10,
        centerTitle: true,
        backgroundColor: Colors.purple.withOpacity(0.7) ,
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        // flexibleSpace: Image(image: NetworkImage('https://image.tmdb.org/t/p/original/bSqpOGzaKBdGkBLmcm1JJIVryYy.jpg',), fit: BoxFit.cover,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("AppBar Tutorial", style: TextStyle(fontSize: 22),),
            Text("Coding with Me", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple),)
          ],
        ),
      )
      );
  }
}