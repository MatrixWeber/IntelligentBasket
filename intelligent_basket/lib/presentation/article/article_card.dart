import 'package:flutter/material.dart';
import 'package:intelligent_basket/domain/entity/article_entity.dart';

class ArticleCard extends StatelessWidget {
  final ArticleEntity _articleEntity;
  const ArticleCard(this._articleEntity, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print("card: ${_articleEntity.name} was presed "),
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${_articleEntity.name}: ",
              style: const TextStyle(fontSize: 30),
            ),
            Text(
              "${_articleEntity.value}",
              style: const TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
