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
      color: color,
      child: Text(buttonName),
    ),
  );
}

Widget buttonThemeAndIncreaseVariableOnPressed(
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
          },
          onLongPress: () {
            showDialog(
              child: CustomAlertDialog(
                articleEntity,
                operateOnVariable,
                title: articleEntity.name,
                labelText: "Menge",
                errorTextEmpty: "Gib mindestens eine 0 ein",
              ),
              context: context,
              barrierDismissible: false,
            );
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
            },
            color: articleEntity.color,
            child: Text(articleEntity.value.toString()),
          ),
        ),
      ),
    ],
  );
}

void removeOrAddArticleToShopingMap(ArticleEntity articleEntity,
    Map<String, ArticleEntity> articleAlreadyInShoppingListMap) {
  bool wasEntryRemoved = false;
  bool wasKeyFound = false;
  for (final entry in articleAlreadyInShoppingListMap.entries) {
    if (entry.key == articleEntity.name) {
      wasKeyFound = true;
      if (articleEntity.value <= 0) {
        articleAlreadyInShoppingListMap.remove(entry.key);
        wasEntryRemoved = true;
        break;
      }
    }
  }
  if (!wasEntryRemoved && !wasKeyFound) {
    articleAlreadyInShoppingListMap[articleEntity.name] = articleEntity;
  }
}
