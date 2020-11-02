import 'package:flutter/material.dart';
import 'package:intelligent_basket/domain/entity/article_entity.dart';
import '../misc/helper_functions.dart';

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
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void operateOnVariable(ArticleEntity articleEntity, Function operation) {
      setState(() {
        operation();
        final stringAvailable = myController.text.contains(articleEntity.name);
        if (!stringAvailable) {
          myController.text = myController.text +
              '${articleEntity.name}: ${articleEntity.value}\n';
        } else {
          final lengthOfString = articleEntity.name.length + 2;
          // myController.text. = '${articleEntity.value}';
          num oldValue = articleEntity.value - 1;
          int startIndex =
              myController.text.indexOf(articleEntity.name + ": $oldValue");
          if (startIndex == -1) {
            oldValue = articleEntity.value + 1;
            startIndex =
                myController.text.indexOf(articleEntity.name + ": $oldValue");
          }
          final newValue = myController.text
              .replaceFirst('$oldValue', '${articleEntity.value}', startIndex);
          // myController.text = newValue;
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
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 5, color: Colors.black54),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SingleChildScrollView(
              child: TextField(
                controller: myController,
                // scrollPadding: Scrollpedding ,
                minLines: 5,
                maxLines: 6,
                style: const TextStyle(fontSize: 30, color: Colors.black),
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  prefix: const Text('Obst: '),
                  // labelText:
                  //     '${orange.name}: ${orange.value}\n${bannane.name}: ${bannane.value}\n${apfel.name}: ${apfel.value}\n'
                  //     '${traube.name}: ${traube.value}\n${kirsche.name}: ${kirsche.value}\n${pflaume.name}: ${pflaume.value}\n'
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buttonThemeAndIncreaseVariableOnPressedOne(
                          orange.name, orange, operateOnVariable, orange.color),
                      buttonThemeAndIncreaseVariableOnPressedOne(bannane.name,
                          bannane, operateOnVariable, bannane.color),
                      buttonThemeAndIncreaseVariableOnPressedOne(
                          apfel.name, apfel, operateOnVariable, apfel.color),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buttonThemeAndIncreaseVariableOnPressedOne(
                          traube.name, traube, operateOnVariable, traube.color),
                      buttonThemeAndIncreaseVariableOnPressedOne(kirsche.name,
                          kirsche, operateOnVariable, kirsche.color),
                      buttonThemeAndIncreaseVariableOnPressedOne(pflaume.name,
                          pflaume, operateOnVariable, pflaume.color),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
