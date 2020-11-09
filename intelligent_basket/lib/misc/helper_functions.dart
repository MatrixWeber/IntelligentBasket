import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:intelligent_basket/domain/entity/article_entity.dart';

import 'custom_dialog.dart';

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

Widget buttonThemeAndIncreaseVariableOnPressedOne(
  BuildContext context,
  ArticleEntity articleEntity,
  Function operateOnVariable,
) {
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
            print(
                '${articleEntity.name} was press ${articleEntity.value} times');
          },
          onLongPress: () {
            showDialog(
              child: CustomAlertDialog(
                articleEntity,
                operateOnVariable,
                title: articleEntity.name,
                labelText: "Menge",
                errorTextEmpty: "Gib mindestens eine 0 ein",
                //  boxName: "user_box",
                //  userModelHive: UserModelHive()
                //    ..id = DateTime.now()
                //    ..giverName = _txtUserController.text
                //    ..pinCodeNumber = "",
                //  routeName: HomeScreen.routeNamed,
              ),
              context: context,
              barrierDismissible: false,
            );

            // AwesomeDialog(
            //   context: context,
            //   width: 280,
            //   buttonsBorderRadius: BorderRadius.all(Radius.circular(2)),
            //   headerAnimationLoop: false,
            //   animType: AnimType.BOTTOMSLIDE,
            //   title: articleEntity.name,
            //   desc: '',
            //   btnCancelOnPress: () {},
            //   btnOkOnPress: () {},
            // )..show();
            // print('$buttonName long pressed');
          },
          color: articleEntity.color,
          child: Text(articleEntity.name),
        ),
      ),
      Positioned(
        bottom: 65,
        child: ButtonTheme(
          minWidth: 10.0,
          height: 10.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: const BorderSide(color: Colors.black)),
          child: RaisedButton(
            onPressed: () {
              operateOnVariable(articleEntity, articleEntity.substract);
              print(
                  '${articleEntity.name} was press ${articleEntity.value} times');
            },
            color: articleEntity.color,
            child: Text(articleEntity.value.toString()),
          ),
        ),
      ),
    ],
  );
}
