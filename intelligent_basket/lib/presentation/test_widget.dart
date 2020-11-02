import 'package:flutter/material.dart';
import 'package:intelligent_basket/domain/entity/count_value_entity.dart';

import '../misc/helper_functions.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({Key key}) : super(key: key);

  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  ArticleEntity test = ArticleEntity(0, 'Kiwi', Colors.orange);
  ArticleEntity test1 = ArticleEntity(0, 'Papaya', Colors.green);
  ArticleEntity test2 = ArticleEntity(0, 'Popkorn', Colors.red);
  ArticleEntity test3 = ArticleEntity(0, 'Erdbeere', Colors.red);
  ArticleEntity test4 = ArticleEntity(0, 'Olive', Colors.green);
  ArticleEntity test5 = ArticleEntity(0, 'Eier', Colors.blue);

  @override
  Widget build(BuildContext context) {
    void operateOnVariable(ArticleEntity countValueEntity, Function operation) {
      setState(() {
        operation();
      });
    }

    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 23),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.blue),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                child: TextField(
                  minLines: 5,
                  maxLines: 20,
                  style: const TextStyle(fontSize: 30, color: Colors.black),
                  decoration: InputDecoration(
                      labelText:
                          '${test.name}: ${test.value}\n${test1.name}: ${test1.value}\n${test2.name}: ${test2.value}\n'),
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
                          test.name, test, operateOnVariable, test.color),
                      buttonThemeAndIncreaseVariableOnPressedOne(
                          test1.name, test1, operateOnVariable, test1.color),
                      buttonThemeAndIncreaseVariableOnPressedOne(
                          test2.name, test2, operateOnVariable, test2.color),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buttonThemeAndIncreaseVariableOnPressedOne(
                          test3.name, test3, operateOnVariable, test3.color),
                      buttonThemeAndIncreaseVariableOnPressedOne(
                          test4.name, test4, operateOnVariable, test4.color),
                      buttonThemeAndIncreaseVariableOnPressedOne(
                          test5.name, test5, operateOnVariable, test5.color),
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
