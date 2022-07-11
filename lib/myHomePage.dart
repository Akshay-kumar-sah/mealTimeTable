import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import './sundayMealItem.dart';
import './fridayMealItem.dart';
import './mondayMealItem.dart';
import './tuesdayMealItem.dart';
import './thursdayMealItem.dart';
import './saturdayMealItem.dart';
import './wednesdayMealItem.dart';
import './accountPage.dart';
import './settings.dart';

class MyHomePage extends StatefulWidget {
  // MyHomePage({Key? key}) : super(key: key);
  static const routeName = "MyHomePage";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('MealTimeTable'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.language_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(sundayMealItem.routeName);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orangeAccent,
                      ),
                      child: Text('Sunday'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(mondayMealItem.routeName);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.greenAccent,
                      ),
                      child: Text('Monday'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(tuesdayMealItem.routeName);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.cyan,
                      ),
                      child: Text(' Tuesday'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(wednesdayMealItem.routeName);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orangeAccent,
                      ),
                      child: Text('Wednesday'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(thursdayMealItem.routeName);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(228, 219, 6, 201),
                      ),
                      child: Text('Thursday'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(fridayMealItem.routeName);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 122, 229, 14),
                      ),
                      child: Text('Friday'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(saturdayMealItem.routeName);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 99, 9, 234),
                      ),
                      child: Text('Saturday'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AccountPage.routeName);
              },
              icon: Icon(Icons.account_circle),
              color: Colors.amber,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(MyHomePage.routeName);
              },
              icon: Icon(Icons.home),
              color: Colors.amber,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SettingPage.routeName);
              },
              icon: Icon(Icons.settings),
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
