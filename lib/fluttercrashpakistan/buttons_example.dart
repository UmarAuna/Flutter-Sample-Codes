import 'package:flutter/material.dart';

class ButtonsExample extends StatelessWidget {
  const ButtonsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons Example'.toUpperCase()),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Let's Begin"),
              //child: Icon(Icons.add_shopping_cart_outlined),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20.0),
                  fixedSize: Size(300, 80),
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  primary: Colors.yellow,
                  onPrimary: Colors.black87,
                  elevation: 15,
                  shadowColor: Colors.yellow,
                  side: BorderSide(color: Colors.black87, width: 2),
                  // alignment: Alignment.topLeft
                  // shape: CircleBorder()
                  //shape: RoundedRectangleBorder()
                  shape: StadiumBorder()),
            ),
          ),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {},
              //child: Text("Let's Begin"),
              icon: Icon(Icons.add_shopping_cart_outlined),
              label: Text("Let's Begin"),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20.0),
                  fixedSize: Size(300, 80),
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  primary: Colors.yellow,
                  onPrimary: Colors.black87,
                  elevation: 15,
                  shadowColor: Colors.yellow,
                  side: BorderSide(color: Colors.black87, width: 2),
                  // alignment: Alignment.topLeft
                  // shape: CircleBorder()
                  //shape: RoundedRectangleBorder()
                  shape: StadiumBorder()),
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                //child: Text("Let's Begin"),
                icon: Icon(Icons.add_shopping_cart_outlined),
                label: Text("Let's Begin"),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20.0),
                    fixedSize: Size(300, 80),
                    textStyle: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    primary: Colors.yellow,
                    onPrimary: Colors.black87,
                    elevation: 15,
                    shadowColor: Colors.yellow,
                    side: BorderSide(color: Colors.black87, width: 2),
                    // alignment: Alignment.topLeft
                    // shape: CircleBorder()
                    //shape: RoundedRectangleBorder()
                    shape: StadiumBorder()),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Let's Begin"),
                  Icon(Icons.add_shopping_cart_outlined),
                ],
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20.0),
                  fixedSize: Size(300, 80),
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  primary: Colors.yellow,
                  onPrimary: Colors.black87,
                  elevation: 15,
                  shadowColor: Colors.yellow,
                  side: BorderSide(color: Colors.black87, width: 2),
                  // alignment: Alignment.topLeft
                  // shape: CircleBorder()
                  //shape: RoundedRectangleBorder()
                  shape: StadiumBorder()),
            ),
          ),
          Center(
            child: OutlinedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Let's Begin"),
                  Icon(Icons.add_shopping_cart_outlined),
                ],
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20.0),
                  fixedSize: Size(300, 80),
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  // primary: Colors.yellow,
                  onPrimary: Colors.black87,
                  // elevation: 15,
                  shadowColor: Colors.yellow,
                  // side: BorderSide(color: Colors.black87, width: 2),
                  // alignment: Alignment.topLeft
                  // shape: CircleBorder()
                  //shape: RoundedRectangleBorder()
                  shape: StadiumBorder()),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Let's Begin"),
                  Icon(Icons.add_shopping_cart_outlined),
                ],
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20.0),
                  fixedSize: Size(300, 80),
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  // primary: Colors.yellow,
                  onPrimary: Colors.black87,
                  // elevation: 15,
                  shadowColor: Colors.yellow,
                  // side: BorderSide(color: Colors.black87, width: 2),
                  // alignment: Alignment.topLeft
                  // shape: CircleBorder()
                  //shape: RoundedRectangleBorder()
                  shape: StadiumBorder()
                  ),
            ),
          ),

          // Disable a Button
           Center(
            child: ElevatedButton(
              onPressed: null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Let's Begin"),
                  Icon(Icons.add_shopping_cart_outlined),
                ],
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20.0),
                  fixedSize: Size(300, 80),
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  // primary: Colors.yellow,
                  onPrimary: Colors.black87,
                  // elevation: 15,
                  shadowColor: Colors.yellow,
                  // side: BorderSide(color: Colors.black87, width: 2),
                  // alignment: Alignment.topLeft
                  // shape: CircleBorder()
                  //shape: RoundedRectangleBorder()
                  shape: StadiumBorder()
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
