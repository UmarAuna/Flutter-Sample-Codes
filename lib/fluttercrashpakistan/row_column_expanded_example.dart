import 'package:flutter/material.dart';

class RowColumnExpandedExample extends StatelessWidget {
  const RowColumnExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rows Columns and Expanded'),
        centerTitle: true,
      ),
      body: Container(
        // color: Colors.purple,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Image.asset('images/umar.png')),
                Expanded(flex: 2, child: Image.asset('images/umar.png')),
                Expanded(flex: 3, child: Image.asset('images/umar.png')),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Column(
                children: [
                  Icon(
                    Icons.phone,
                    size: 35.0,
                  ),
                  Text('Phone')
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.alt_route,
                    size: 35.0,
                  ),
                  Text('Route')
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.share,
                    size: 35.0,
                  ),
                  Text('Share')
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
