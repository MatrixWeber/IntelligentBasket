import 'package:flutter/material.dart';

// diese funktion gibt einen RaisedButton zurück
// Der RaisedButton beinhaltet 3 Variablen 1. Button Name 2. go to page function
// 3. color weil diese Parameter sich für jeden Button ändern müssen
Widget buttonThemeAndMoveToPage(
    String buttonName, Function moveToPageFuncton, Color color) {
  return ButtonTheme(
    minWidth: 100.0,
    height: 100.0,
    child: RaisedButton(
      onPressed: () {
        moveToPageFuncton();
      },
      onLongPress: () {
        print('$buttonName long pressed');
      },
      color: color,
      child: Text(buttonName),
    ),
  );
}

Widget buttonThemeAndIncreaseVariableOnPressed(
    String buttonName, num value, Color color) {
  return ButtonTheme(
    minWidth: 100.0,
    height: 100.0,
    child: RaisedButton(
      onPressed: () {
        value++;
        print('$buttonName was press $value times');
      },
      onLongPress: () {
        print('$buttonName long pressed');
      },
      color: color,
      child: Text(buttonName),
    ),
  );
}
