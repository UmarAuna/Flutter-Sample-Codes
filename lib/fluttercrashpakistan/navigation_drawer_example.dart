

import 'package:flutter/material.dart';

class NavigationDrawerExample extends StatelessWidget {
  NavigationDrawerExample({super.key});

  final List<String> products = ['Bed', 'Sofa', 'Chair'];
  final List<String> productDetails = [
    'King size bed',
    'King Size sofa',
    'Wooden chair'
  ];
  final List<int> price = [3000, 2500, 1860];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 3,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Umar Saidu'), 
              accountEmail: Text('umar@gmail.com'),
              currentAccountPicture: CircleAvatar(foregroundImage: AssetImage('images/umar.png'),),
              otherAccountsPictures: [
                CircleAvatar(foregroundImage: AssetImage('images/umar.png'),),
                CircleAvatar(foregroundImage: AssetImage('images/umar.png'),),
              ],
              ),
            /* DrawerHeader(
                padding: EdgeInsets.all(0),
                child: Container(
                  color: Colors.blue,
                  child: Column(
                    children: [Text('Hi')],
                  ),
                )), */
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Shop'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorite'),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text('Labels'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.label, color: Colors.red,),
              title: Text('Red'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.label, color: Colors.green,),
              title: Text('Green'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.label, color: Colors.blue),
              title: Text('Blue'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Navigation Drawer Example'.toUpperCase()),
      ),
      body: Container(
          child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(products[index][0]),
                  ),
                  title: Text(products[index]),
                  subtitle: Text(productDetails[index]),
                  trailing: Text(price[index].toString()),
                );
              })),
    );
  }
}
