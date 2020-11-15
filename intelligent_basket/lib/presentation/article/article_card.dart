import 'package:flutter/material.dart';
import 'package:intelligent_basket/domain/entity/article_entity.dart';

class ArticleCard extends StatefulWidget {
  final ArticleEntity _articleEntity;

  const ArticleCard(this._articleEntity, {Key key}) : super(key: key);

  @override
  _ArticleCardState createState() => _ArticleCardState();
}

class _ArticleCardState extends State<ArticleCard> {
  bool wasCheckBoxTaped = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: wasCheckBoxTaped ? Colors.green : Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Checkbox(
              value: wasCheckBoxTaped,
              onChanged: (value) {
                setState(() {
                  wasCheckBoxTaped = value;
                });
              }),
          InkWell(
            onTap: () =>
                print("card: ${widget._articleEntity.name} was presed "),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${widget._articleEntity.name}: ",
                  style: const TextStyle(fontSize: 30),
                ),
                Text(
                  "${widget._articleEntity.value}",
                  style: const TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
