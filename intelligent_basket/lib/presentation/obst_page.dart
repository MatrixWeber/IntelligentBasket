import 'package:flutter/material.dart';

import '../misc/helper_functions.dart';

class ObstPage extends StatefulWidget {
  const ObstPage({Key key}) : super(key: key);

  @override
  _ObstPageState createState() => _ObstPageState();
}

class _ObstPageState extends State<ObstPage> {
  num numOfOrange = 0;
  num numOfBanane = 0;
  num numOfApfel = 0;

  num numOfTraube = 0;
  num numOfKirsche = 0;
  num numOfPflaume = 0;

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
        // decoration: BoxDecoration(
        //   gradient: SweepGradient(colors: [
        //     Colors.pink,
        //     Colors.red,
        //     Colors.green,
        //     Colors.purple,
        //     Colors.teal
        //   ], stops: [
        //     0.8,
        //     0.96,
        //     0.74,
        //     0.22,
        //     0.85
        //   ], startAngle: 0.5, endAngle: 1),
        // ),
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buttonThemeAndIncreaseVariableOnPressed(
                      'Orange', numOfOrange, Colors.orange[800]),
                  buttonThemeAndIncreaseVariableOnPressed(
                      'Banane', numOfBanane, Colors.yellow),
                  buttonThemeAndIncreaseVariableOnPressed(
                      'Apfel', numOfApfel, Colors.red[900]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buttonThemeAndIncreaseVariableOnPressed(
                      'Traube', numOfTraube, Colors.indigo),
                  buttonThemeAndIncreaseVariableOnPressed(
                      'Kirsche', numOfKirsche, Colors.redAccent),
                  buttonThemeAndIncreaseVariableOnPressed(
                      'Pflaume', numOfPflaume, Colors.blue),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
