import 'package:flutter/material.dart';
import 'package:intelligent_basket/domain/entity/article_entity.dart';

// ignore: must_be_immutable
class CustomAlertDialog extends StatefulWidget {
  final TextEditingController controller = TextEditingController();
  final String title;
  final String labelText;
  final String errorTextEmpty;
  final String boxName;
  final ArticleEntity _articleEntity;
  final Function operateOnVariable;

//  final UserModelHive userModelHive;

  CustomAlertDialog(
    this._articleEntity,
    this.operateOnVariable, {
    this.title,
    this.labelText,
    this.errorTextEmpty,
    this.boxName,
    //  this.userModelHive,
  });

  @override
  _CustomAlertDialogState createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
//  final Repository _repository = Repository();
  final formKeys = GlobalKey<FormState>();

  void changeText(bool wasDeletePressed) {
    setState(() {
      widget._articleEntity.value =
          wasDeletePressed ? 0 : int.parse(widget.controller.text);
      Navigator.pop(context);
      widget.operateOnVariable(widget._articleEntity, null);
    });
  }

  void onFieldTapped() {
    if (widget._articleEntity.value <= 0) {
      setState(() {
        widget.controller.text = '';
      });
    }
  }

  @override
  initState() {
    super.initState();
    widget.controller.text = widget._articleEntity.value.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKeys,
      child: _SystemPadding(
        child: AlertDialog(
          title: Text(widget.title),
          content: TextFormField(
            keyboardType: TextInputType.number,
            onTap: () {
              onFieldTapped();
            },
            controller: widget.controller,
            decoration: InputDecoration(
              labelText: widget.labelText,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            ),
            validator: (value) {
              if (value.isEmpty) {
                return widget.errorTextEmpty;
              }
              return null;
            },
          ),
          actions: <Widget>[
            FlatButton.icon(
                icon: const Icon(Icons.delete),
                label: const Text(""),
                color: Colors.red,
                textTheme: ButtonTextTheme.primary,
                onPressed: () {
                  changeText(true);
                }),
            FlatButton.icon(
                icon: const Icon(Icons.shopping_bag),
                label: const Text("Einfügen"),
                color: Theme.of(context).primaryColor,
                textTheme: ButtonTextTheme.primary,
                onPressed: () {
                  changeText(false);
                }),
          ],
        ),
      ),
    );
  }
}

class _SystemPadding extends StatelessWidget {
  final Widget child;

  const _SystemPadding({this.child});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    print(mediaQuery.viewInsets.bottom);
    return AnimatedContainer(
      padding: mediaQuery.padding,
      color: Colors.black.withOpacity(.5),
      duration: const Duration(milliseconds: 300),
      child: child,
    );
  }
}
