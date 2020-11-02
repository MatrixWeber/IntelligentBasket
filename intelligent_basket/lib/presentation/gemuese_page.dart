import 'package:flutter/material.dart';
import 'package:intelligent_basket/misc/helper_functions.dart';

import '../misc/helper_functions.dart';

String s() => 'helper_functions.dart';

class GemuesePage extends StatefulWidget {
  const GemuesePage({Key key}) : super(key: key);

  @override
  _GemuesePageState createState() => _GemuesePageState();
}

class _GemuesePageState extends State<GemuesePage> {
  num numOfKarotte = 0;
  num numOfKartoffel = 0;
  num numOfSchampinions = 0;
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
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
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
      body: Container(
        color: Colors.blueGrey[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buttonThemeAndIncreaseVariableOnPressed(
                      'Kartoffel', numOfKartoffel, Colors.brown),
                  buttonThemeAndIncreaseVariableOnPressed(
                      'Karotte', numOfKarotte, Colors.orange[800]),
                  buttonThemeAndIncreaseVariableOnPressed(
                      'Pilz', numOfSchampinions, Colors.grey[600]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  // hier kann man auch eine Funktion einbauen
}
