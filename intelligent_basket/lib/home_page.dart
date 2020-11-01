import 'package:flutter/material.dart';

import 'fleisch_page.dart';
import 'gemuese_page.dart';
import 'helper_functions.dart';
import 'obst_page.dart';
import 'test_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _moveToObstPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ObstPage()),
    );
  }

  void _moveToGemuesePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GemuesePage()),
    );
  }

  void _moveToFleischPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FleischPage()),
    );
  }

  void _moveToTestPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TestWidget()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Einkaufszettel'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              TextField(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buttonThemeAndMoveToPage(
                      'Obst', _moveToObstPage, Colors.orange),
                  buttonThemeAndMoveToPage(
                      'Gemuese', _moveToGemuesePage, Colors.green),
                  buttonThemeAndMoveToPage(
                      'Fleisch', _moveToFleischPage, Colors.red),
                  buttonThemeAndMoveToPage(
                      'Test', _moveToTestPage, Colors.blue),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
