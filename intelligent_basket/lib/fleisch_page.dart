import 'package:flutter/material.dart';

class FleischPage extends StatefulWidget {
  FleischPage({Key key}) : super(key: key);

  @override
  _FleischPageState createState() => _FleischPageState();
}

class _FleischPageState extends State<FleischPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
