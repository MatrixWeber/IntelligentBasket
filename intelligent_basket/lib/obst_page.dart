import 'package:flutter/material.dart';

import 'helper_functions.dart';

class ObstPage extends StatefulWidget {
  ObstPage({Key key}) : super(key: key);

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
    return Container(
      color: Colors.grey,
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
            padding: EdgeInsets.only(left: 30, right: 30),
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
    );
  }
}
