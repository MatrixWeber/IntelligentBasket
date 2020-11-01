import 'package:flutter/material.dart';

import 'helper_functions.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({Key key}) : super(key: key);

  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {
    num test = 0;
    num test1 = 0;
    num test2 = 0;

    void increaseVariable(num value) {
      setState(() {
        value++;
      });
    }

    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.red),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SingleChildScrollView(
                  child: TextField(
                    minLines: 5,
                    maxLines: 20,
                    style: TextStyle(fontSize: 30, color: Colors.orange),
                    decoration: InputDecoration(labelText: '$test'),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buttonThemeAndIncreaseVariableOnPressedOne(
                      'Test', test, increaseVariable, Colors.orange),
                  buttonThemeAndIncreaseVariableOnPressed(
                      'Test1', test1, Colors.green),
                  buttonThemeAndIncreaseVariableOnPressed(
                      'Test2', test2, Colors.red),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
