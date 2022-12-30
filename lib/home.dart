import 'package:flutter/material.dart';
import 'package:random_words/fluttercrashpakistan/appbar_example.dart';
import 'package:random_words/fluttercrashpakistan/buttons_example.dart';
import 'package:random_words/fluttercrashpakistan/container_example.dart';
import 'package:random_words/fluttercrashpakistan/floating_action_button_example.dart';
import 'package:random_words/fluttercrashpakistan/icon_example.dart';
import 'package:random_words/fluttercrashpakistan/image_example.dart';
import 'package:random_words/fluttercrashpakistan/list_view_example.dart';
import 'package:random_words/fluttercrashpakistan/navigation_drawer_example.dart';
import 'package:random_words/fluttercrashpakistan/navigation_example.dart';
import 'package:random_words/fluttercrashpakistan/random_number_generator_example.dart';
import 'package:random_words/fluttercrashpakistan/row_column_expanded_example.dart';
import 'package:random_words/fluttercrashpakistan/stack_and_positioned_example.dart';
import 'package:random_words/fluttercrashpakistan/text_rich_example.dart';
import 'package:random_words/quizword/quiz_words.dart';
import 'package:random_words/randomwords/random_words.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        children: [
          ListTile(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            leading: IconButton(
              icon: const Icon(Icons.chair, color: Colors.blueAccent),
              onPressed: () {},
            ),
            title: const Text(
              "Random Words",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            subtitle: const Text("Random Words Example"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RandomWords();
              }));
            },
          ),
           ListTile(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            leading: IconButton(
              icon: const Icon(Icons.chair, color: Colors.blueAccent),
              onPressed: () {},
            ),
            title: const Text(
              "Quiz Words",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            subtitle: const Text("Quiz Words Example"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return QuizWord();
              }));
            },
          ),
          ListTile(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            leading: IconButton(
              icon: const Icon(Icons.chair, color: Colors.blueAccent),
              onPressed: () {},
            ),
            title: const Text(
              "App Bar",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            subtitle: const Text("AppBar Example"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AppBarExample();
              }));
            },
          ),
           ListTile(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            leading: IconButton(
              icon: const Icon(Icons.chair, color: Colors.blueAccent),
              onPressed: () {},
            ),
            title: const Text(
              "Buttons",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            subtitle: const Text("Buttons Example"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ButtonsExample();
              }));
            },
          ),
           ListTile(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            leading: IconButton(
              icon: const Icon(Icons.chair, color: Colors.blueAccent),
              onPressed: () {},
            ),
            title: const Text(
              "Container",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            subtitle: const Text("Container Example"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ContainerExample();
              }));
            },
          ),
          ListTile(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            leading: IconButton(
              icon: const Icon(Icons.chair, color: Colors.blueAccent),
              onPressed: () {},
            ),
            title: const Text(
              "Floating Action Button",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            subtitle: const Text("Floating Action Button Example"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FloatingActionButtonExample();
              }));
            },
          ),
          ListTile(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            leading: IconButton(
              icon: const Icon(Icons.chair, color: Colors.blueAccent),
              onPressed: () {},
            ),
            title: const Text(
              "Icon",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            subtitle: const Text("Icon Example"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return IconExample();
              }));
            },
          ),
          ListTile(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            leading: IconButton(
              icon: const Icon(Icons.chair, color: Colors.blueAccent),
              onPressed: () {},
            ),
            title: const Text(
              "Image",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            subtitle: const Text("Image Example"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ImageExample();
              }));
            },
          ),
          ListTile(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            leading: IconButton(
              icon: const Icon(Icons.chair, color: Colors.blueAccent),
              onPressed: () {},
            ),
            title: const Text(
              "List View",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            subtitle: const Text("ListView Example"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListViewExample();
              }));
            },
          ),
          ListTile(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            leading: IconButton(
              icon: const Icon(Icons.chair, color: Colors.blueAccent),
              onPressed: () {},
            ),
            title: const Text(
              "List View",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            subtitle: const Text("ListView Example"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListViewExample();
              }));
            },
          ),
          ListTile(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            leading: IconButton(
              icon: const Icon(Icons.chair, color: Colors.blueAccent),
              onPressed: () {},
            ),
            title: const Text(
              "Navigation Drawer",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            subtitle: const Text("Navigation Drawer Example"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NavigationDrawerExample();
              }));
            },
          ),
          ListTile(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            leading: IconButton(
              icon: const Icon(Icons.chair, color: Colors.blueAccent),
              onPressed: () {},
            ),
            title: const Text(
              "Navigation",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            subtitle: const Text("Navigation Example"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NavigationExample();
              }));
            },
          ),
          ListTile(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            leading: IconButton(
              icon: const Icon(Icons.chair, color: Colors.blueAccent),
              onPressed: () {},
            ),
            title: const Text(
              "Random Number Generator",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            subtitle: const Text("Random Number Generator Example"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RandomNumberGeneratorExample();
              }));
            },
          ),
          ListTile(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            leading: IconButton(
              icon: const Icon(Icons.chair, color: Colors.blueAccent),
              onPressed: () {},
            ),
            title: const Text(
              "Row Column Expanded",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            subtitle: const Text("Row Column Expanded Example"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RowColumnExpandedExample();
              }));
            },
          ),
          ListTile(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            leading: IconButton(
              icon: const Icon(Icons.chair, color: Colors.blueAccent),
              onPressed: () {},
            ),
            title: const Text(
              "Stack and Positioned",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            subtitle: const Text("Stack and Position Example"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return StackAndPositionedExample();
              }));
            },
          ),

          ListTile(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
            leading: IconButton(
              icon: const Icon(Icons.chair, color: Colors.blueAccent),
              onPressed: () {},
            ),
            title: const Text(
              "Text Rich",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            subtitle: const Text("Text Rich Example"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return TextRichExample();
              }));
            },
          ),

        ],
      ),
    );
  }
}
