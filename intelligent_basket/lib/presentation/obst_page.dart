import 'package:flutter/material.dart';
import 'package:intelligent_basket/domain/entity/article_entity.dart';
import '../misc/helper_functions.dart';
import 'article/article_card.dart';

class ObstPage extends StatefulWidget {
  const ObstPage({Key key}) : super(key: key);

  @override
  _ObstPageState createState() => _ObstPageState();
}

class _ObstPageState extends State<ObstPage> {
  ArticleEntity orange = ArticleEntity(0, 'Orange', Colors.orange);
  ArticleEntity bannane = ArticleEntity(0, 'Banane', Colors.yellow);
  ArticleEntity apfel = ArticleEntity(0, 'Apfel', Colors.green);
  ArticleEntity traube = ArticleEntity(0, 'Traube', Colors.indigo);
  ArticleEntity kirsche = ArticleEntity(0, 'Kirsche', Colors.redAccent);
  ArticleEntity pflaume = ArticleEntity(0, 'Pflaume', Colors.blue);
  ArticleEntity ananas = ArticleEntity(0, 'Ananas', Colors.yellow);
  ArticleEntity pfirsich = ArticleEntity(0, 'Pfirsich', Colors.deepOrange);
  ArticleEntity kiwi = ArticleEntity(0, 'Kiwi', Colors.green);
  ArticleEntity himbeere = ArticleEntity(0, 'Himbeere', Colors.pink[900]);
  ArticleEntity erdbeere = ArticleEntity(0, 'Erdbeere', Colors.red[400]);
  ArticleEntity blaubeere = ArticleEntity(0, 'Blaubeere', Colors.blue[700]);
  ArticleEntity melone = ArticleEntity(0, 'Melone', Colors.yellow[700]);
  ArticleEntity wassermelone = ArticleEntity(0, 'W.Melone', Colors.green[400]);
  ArticleEntity johannisbeere =
      ArticleEntity(0, 'Johannis\n   beere', Colors.blue[900]);
  Map<String, ArticleEntity> articleAlreadyInShoppingListMap =
      <String, ArticleEntity>{};

  List<Widget> getList() {
    final List<Widget> childs = [];
    // for (final entry in articleAlreadyInShoppingListMap.) {
    //   if (entry.value > 0) {
    //     childs.add(ArticleCard(entry));
    //   }
    // }
    if (articleAlreadyInShoppingListMap.isNotEmpty) {
      final mapList = articleAlreadyInShoppingListMap.values.toList();
      for (var entry = mapList.length - 1; entry >= 0; entry--) {
        if (mapList[entry].value > 0) {
          childs.add(ArticleCard(mapList[entry]));
        }
      }
    }
    if (childs.isEmpty) {
      childs.add(Container());
    }
    return childs;
  }

  void operateOnVariable(ArticleEntity articleEntity, Function operation) {
    setState(() {
      if (operation != null) {
        operation();
      } else {
        articleEntity.value = articleEntity.value;
      }
    });
    removeOrAddArticleToShopingMap(
        articleEntity, articleAlreadyInShoppingListMap);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
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
        leading: const Icon(Icons.check_box),
      ),
      body: Container(
          color: Colors.grey,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 5, color: Colors.black54),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: getList(),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.grey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buttonThemeAndIncreaseVariableOnPressed(
                                context, orange, operateOnVariable),
                            buttonThemeAndIncreaseVariableOnPressed(
                                context, bannane, operateOnVariable),
                            buttonThemeAndIncreaseVariableOnPressed(
                                context, apfel, operateOnVariable),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buttonThemeAndIncreaseVariableOnPressed(
                                context, traube, operateOnVariable),
                            buttonThemeAndIncreaseVariableOnPressed(
                                context, kirsche, operateOnVariable),
                            buttonThemeAndIncreaseVariableOnPressed(
                                context, pflaume, operateOnVariable),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buttonThemeAndIncreaseVariableOnPressed(
                                context, ananas, operateOnVariable),
                            buttonThemeAndIncreaseVariableOnPressed(
                                context, pfirsich, operateOnVariable),
                            buttonThemeAndIncreaseVariableOnPressed(
                                context, kiwi, operateOnVariable),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buttonThemeAndIncreaseVariableOnPressed(
                                context, himbeere, operateOnVariable),
                            buttonThemeAndIncreaseVariableOnPressed(
                                context, erdbeere, operateOnVariable),
                            buttonThemeAndIncreaseVariableOnPressed(
                                context, blaubeere, operateOnVariable),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buttonThemeAndIncreaseVariableOnPressed(
                                context, melone, operateOnVariable),
                            buttonThemeAndIncreaseVariableOnPressed(
                                context, wassermelone, operateOnVariable),
                            buttonThemeAndIncreaseVariableOnPressed(
                                context, johannisbeere, operateOnVariable),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
