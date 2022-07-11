// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:mealtimetable/accountPage.dart';
import 'package:mealtimetable/settings.dart';
import './myHomePage.dart';
import './accountPage.dart';
import './settings.dart';
import './sundayMealItem.dart';
import './mondayMealItem.dart';
import './tuesdayMealItem.dart';
import './wednesdayMealItem.dart';
import './thursdayMealItem.dart';
import './fridayMealItem.dart';
import './saturdayMealItem.dart';

void main() => runApp(mealTimeTable());

class mealTimeTable extends StatelessWidget {
  //const mealTimeTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        MyHomePage.routeName: (_) => MyHomePage(),
        AccountPage.routeName: (_) => AccountPage(),
        SettingPage.routeName: (_) => SettingPage(),
        sundayMealItem.routeName: (_) => sundayMealItem(),
        mondayMealItem.routeName: (_) => mondayMealItem(),
        tuesdayMealItem.routeName: (_) => tuesdayMealItem(),
        wednesdayMealItem.routeName: (_) => wednesdayMealItem(),
        thursdayMealItem.routeName: (_) => thursdayMealItem(),
        fridayMealItem.routeName: (_) => fridayMealItem(),
        saturdayMealItem.routeName: (_) => saturdayMealItem(),
      },
    );
  }
}
