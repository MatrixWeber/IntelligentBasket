import 'package:flutter/material.dart';
import 'package:intelligent_basket/domain/entity/article_entity.dart';

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

Widget buttonThemeAndIncreaseVariableOnPressedOne(String buttonName,
    ArticleEntity articleEntity, Function operateOnVariable, Color color) {
  return Stack(
    alignment: Alignment.topCenter,
    children: [
      ButtonTheme(
        minWidth: 100.0,
        height: 100.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: const BorderSide(color: Colors.black)),
        child: RaisedButton(
          onPressed: () {
            operateOnVariable(articleEntity, articleEntity.add);
            print('$buttonName was press ${articleEntity.value} times');
          },
          onLongPress: () {
            print('$buttonName long pressed');
          },
          color: color,
          child: Text(buttonName),
        ),
      ),
      Positioned(
        bottom: 63,
        child: ButtonTheme(
          minWidth: 10.0,
          height: 20.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: const BorderSide(color: Colors.black)),
          child: RaisedButton(
            onPressed: () {
              operateOnVariable(articleEntity, articleEntity.substract);
              print('$buttonName was press ${articleEntity.value} times');
            },
            color: color,
            child: Text(articleEntity.value.toString()),
          ),
        ),
      ),
    ],
  );
}
