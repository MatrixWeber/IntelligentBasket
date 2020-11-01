import 'package:flutter/material.dart';

class FleischPage extends StatefulWidget {
  FleischPage({Key key}) : super(key: key);

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
      body: Container(
        color: Colors.blueGrey[100],
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.all(30),
              child: Row(
                mainAxisSize: MainAxisSize.max,
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
                      child: const Text('Schweineflesch'),
                      color: Colors.orange,
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
                      child: const Text('Rindfleisch'),
                      color: Colors.yellow,
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
                      child: const Text('Hakfleisch'),
                      color: Colors.green,
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
