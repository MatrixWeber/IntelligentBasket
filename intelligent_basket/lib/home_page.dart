import 'package:flutter/material.dart';

import 'fleisch_page.dart';
import 'gemuese_page.dart';
import 'helper_functions.dart';
import 'obst_page.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Einkaufszettel'),
      ),
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonThemeAndMoveToPage('Obst', _moveToObstPage, Colors.orange),
            buttonThemeAndMoveToPage(
                'Gemuese', _moveToGemuesePage, Colors.green),
            buttonThemeAndMoveToPage('Fleisch', _moveToFleischPage, Colors.red),
          ],
        )),
      ),
    );
  }
}
