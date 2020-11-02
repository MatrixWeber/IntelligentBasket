import 'package:flutter/material.dart';
import 'package:intelligent_basket/presentation/home_page.dart';

void main() => runApp(EinkaufswagenApp());

class EinkaufswagenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
