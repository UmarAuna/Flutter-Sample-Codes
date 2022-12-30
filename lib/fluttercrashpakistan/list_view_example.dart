
import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  
ListViewExample({Key? key}) : super(key: key);

  final List<String> products = ['Bed', 'Sofa', 'Chair'];
  final List<String> productDetails = ['King size bed', 'King Size sofa', 'Wooden chair'];
  final List<int> price = [ 3000, 2500, 1860];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'.toUpperCase()),
        backgroundColor: Colors.blueGrey,
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

      /* ListView(
          itemExtent: 100.0,
          reverse: false,
          scrollDirection: Axis.vertical,
          children: [
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.alarm_on_sharp), 
              backgroundColor:Colors.blueAccent.withOpacity(0.5) ,
              foregroundColor: Colors.redAccent.withOpacity(0.5) ,),
              title: Text('Sales'),
              subtitle: Text('Sales of the week'),
              trailing: Text('3500'),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.alarm_on_sharp),
              title: Text('Customers'),
              subtitle: Text('Total Customers Visited'),
              trailing: Text('3500'),
            ),
            ListTile(
              leading: Icon(Icons.alarm_on_sharp),
              title: Text('Profit'),
              subtitle: Text('Profit of the week'),
              trailing: Text('3500'),
            )
          ],
        ), */
    );
  }
}
