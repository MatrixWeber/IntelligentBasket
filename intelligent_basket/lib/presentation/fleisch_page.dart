import 'package:flutter/material.dart';
import 'package:intelligent_basket/domain/entity/article_entity.dart';
import '../misc/helper_functions.dart';
import 'article/article_card.dart';

class FleischPage extends StatefulWidget {
  const FleischPage({Key key}) : super(key: key);

  @override
  _FleischPageState createState() => _FleischPageState();
}

class _FleischPageState extends State<FleischPage> {
  ArticleEntity hackfleisch =
      ArticleEntity(0, 'Hackfleisch', Colors.brown[300]);
  ArticleEntity schwein = ArticleEntity(0, 'Schwein', Colors.red[100]);
  ArticleEntity rind = ArticleEntity(0, 'Rind', Colors.green);
  ArticleEntity lahm = ArticleEntity(0, 'Lahm', Colors.yellow[300]);
  ArticleEntity huhn = ArticleEntity(0, 'Huhn', Colors.white54);
  ArticleEntity pute = ArticleEntity(0, 'Pute', Colors.red[300]);

  Map<String, ArticleEntity> articleEntryMap = <String, ArticleEntity>{};

  List<Widget> getList() {
    final List<Widget> childs = [];
    // for (final entry in articleEntryMap.) {
    //   if (entry.value > 0) {
    //     childs.add(ArticleCard(entry));
    //   }
    // }
    if (articleEntryMap.isNotEmpty) {
      final mapList = articleEntryMap.values.toList();
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
    articleEntryMap[articleEntity.name] = articleEntity;
    setState(() {
      if (operation != null) {
        operation();
      } else {
        articleEntity.value = articleEntity.value;
      }
    });
  }

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
            child: Container(
              color: Colors.grey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buttonThemeAndIncreaseVariableOnPressed(
                            context, hackfleisch, operateOnVariable),
                        buttonThemeAndIncreaseVariableOnPressed(
                            context, schwein, operateOnVariable),
                        buttonThemeAndIncreaseVariableOnPressed(
                            context, rind, operateOnVariable),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buttonThemeAndIncreaseVariableOnPressed(
                            context, lahm, operateOnVariable),
                        buttonThemeAndIncreaseVariableOnPressed(
                            context, huhn, operateOnVariable),
                        buttonThemeAndIncreaseVariableOnPressed(
                            context, pute, operateOnVariable),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
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
