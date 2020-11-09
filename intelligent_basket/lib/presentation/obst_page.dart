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
  Map<String, ArticleEntity> articleEntryMap = <String, ArticleEntity>{};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    articleEntryMap[orange.name] = orange;
    articleEntryMap[bannane.name] = bannane;
    articleEntryMap[apfel.name] = apfel;
    articleEntryMap[traube.name] = traube;
    articleEntryMap[kirsche.name] = kirsche;
    articleEntryMap[pflaume.name] = pflaume;
    articleEntryMap[ananas.name] = ananas;
    articleEntryMap[pfirsich.name] = pfirsich;
    articleEntryMap[kiwi.name] = kiwi;
  }

  List<Widget> getList() {
    final List<Widget> childs = [];
    for (final entry in articleEntryMap.values) {
      childs.add(entry.value > 0 ? ArticleCard(entry) : Container());
    }
    return childs;
  }

  @override
  Widget build(BuildContext context) {
    void operateOnVariable(ArticleEntity articleEntity, Function operation) {
      setState(() {
        if (operation != null) {
          operation();
        } else {
          articleEntity.value = articleEntity.value;
        }
      });
    }

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
      ),
      body: Container(
          child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              width: 500,
              decoration: BoxDecoration(
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
            child: SingleChildScrollView(
              child: Container(
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buttonThemeAndIncreaseVariableOnPressedOne(
                            context, orange, operateOnVariable),
                        buttonThemeAndIncreaseVariableOnPressedOne(
                            context, bannane, operateOnVariable),
                        buttonThemeAndIncreaseVariableOnPressedOne(
                            context, apfel, operateOnVariable),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buttonThemeAndIncreaseVariableOnPressedOne(
                            context, traube, operateOnVariable),
                        buttonThemeAndIncreaseVariableOnPressedOne(
                            context, kirsche, operateOnVariable),
                        buttonThemeAndIncreaseVariableOnPressedOne(
                            context, pflaume, operateOnVariable),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buttonThemeAndIncreaseVariableOnPressedOne(
                            context, ananas, operateOnVariable),
                        buttonThemeAndIncreaseVariableOnPressedOne(
                            context, pfirsich, operateOnVariable),
                        buttonThemeAndIncreaseVariableOnPressedOne(
                            context, kiwi, operateOnVariable),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buttonThemeAndIncreaseVariableOnPressedOne(
                            context, ananas, operateOnVariable),
                        buttonThemeAndIncreaseVariableOnPressedOne(
                            context, pfirsich, operateOnVariable),
                        buttonThemeAndIncreaseVariableOnPressedOne(
                            context, kiwi, operateOnVariable),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buttonThemeAndIncreaseVariableOnPressedOne(
                            context, ananas, operateOnVariable),
                        buttonThemeAndIncreaseVariableOnPressedOne(
                            context, pfirsich, operateOnVariable),
                        buttonThemeAndIncreaseVariableOnPressedOne(
                            context, kiwi, operateOnVariable),
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
