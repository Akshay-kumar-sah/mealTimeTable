// ignore_for_file: use_key_in_widget_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:mealtimetable/Screen/OTPpage.dart';
import 'package:mealtimetable/Screen/loginPage.dart';
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
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import './Screen/loginPage.dart';
import './Screen/OTPpage.dart';

Future<void> backgroundHandler(RemoteMessage message) async {
  print(message.data.toString());
  print(message.notification!.title);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  runApp(mealTimeTable());
}

class mealTimeTable extends StatefulWidget {
  @override
  State<mealTimeTable> createState() => _mealTimeTableState();
}

class _mealTimeTableState extends State<mealTimeTable> {
  //const mealTimeTable({Key? key}) : super(key: key);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  User? user;

  getCurrentUser() {
    user = FirebaseAuth.instance.currentUser;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: user != null ? MyHomePage() : LoginPage(),
      routes: {
        //OTPphone.routeName: (_) => OTPphone(),
        MyHomePage.routeName: (_) => MyHomePage(),
        AccountPage.routeName: (_) => AccountPage(),
        LoginPage.routeName: (_) => LoginPage(),
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
