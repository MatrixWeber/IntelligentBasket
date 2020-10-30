import 'package:flutter/material.dart';

import 'helper_functions.dart';

String s() => 'helper_functions.dart';

class GemuesePage extends StatefulWidget {
  GemuesePage({Key key}) : super(key: key);

  @override
  _GemuesePageState createState() => _GemuesePageState();
}

class _GemuesePageState extends State<GemuesePage> {
  num numOfKarotte = 0;
  num numOfKartoffel = 0;
  num numOfSchampinions = 0;
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
    );
  }
  // hier kann man auch eine Funktion einbauen
}
