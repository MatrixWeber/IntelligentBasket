import 'package:flutter/material.dart';
import 'package:intelligent_basket/domain/entity/article_entity.dart';

class ArticleCard extends StatefulWidget {
  final ArticleEntity _articleEntity;
  final Function rebuidFunction;

  ArticleCard(this._articleEntity, this.rebuidFunction, {Key key})
      : super(key: key) {}

  @override
  _ArticleCardState createState() => _ArticleCardState();
}

class _ArticleCardState extends State<ArticleCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget._articleEntity.selected ? Colors.green : Colors.white,
      child: Row(
        children: [
          Checkbox(
              value: widget._articleEntity.selected,
              onChanged: (value) {
                setState(() {
                  widget._articleEntity.selected = value;
                });
                widget.rebuidFunction();
              }),
          InkWell(
            onTap: () =>
                print("card: ${widget._articleEntity.name} was presed "),
            child: Row(
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
