// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import './myHomePage.dart';
import './sundayMealItem.dart';

void main() => runApp(mealTimeTable());

class mealTimeTable extends StatelessWidget {
  //const mealTimeTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {sundayMealItem.routeName: (_) => sundayMealItem()},
    );
  }
}
