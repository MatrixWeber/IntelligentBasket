import 'package:flutter/material.dart';

class FleischPage extends StatefulWidget {
  const FleischPage({Key key}) : super(key: key);

  @override
  _FleischPageState createState() => _FleischPageState();
}

class _FleischPageState extends State<FleischPage> {
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
              // ignore: prefer_const_constructors
              title: Text('Item 1'),
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
                  ButtonTheme(
                    minWidth: 100.0,
                    height: 100.0,
                    child: RaisedButton(
                      onLongPress: () {
                        print('Schweineflesch long pressed');
                      },
                      onPressed: () {
                        print('Schweineflesch pressed');
                      },
                      color: Colors.orange,
                      child: const Text('Schweineflesch'),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100.0,
                    height: 100.0,
                    child: RaisedButton(
                      onLongPress: () {
                        print('Rindfleisch long pressed');
                      },
                      onPressed: () {
                        print('Rindfleisch pressed');
                      },
                      color: Colors.yellow,
                      child: const Text('Rindfleisch'),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 100.0,
                    height: 100.0,
                    child: RaisedButton(
                      onLongPress: () {
                        print('Hakfleisch long pressed');
                      },
                      onPressed: () {
                        print('Hakfleisch pressed');
                      },
                      color: Colors.green,
                      child: const Text('Hakfleisch'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
