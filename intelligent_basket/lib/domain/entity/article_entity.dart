import 'package:flutter/cupertino.dart';

class ArticleEntity {
  final String _name;
  num _value;
  Color _color;
  ArticleEntity(this._value, this._name, this._color);

  void add() {
    _value++;
  }

  void substract() {
    if (_value != 0) {
      _value--;
    }
  }

  set value(num value) => _value = value;
  num get value => _value;
  String get name => _name;
  Color get color => _color;
}
