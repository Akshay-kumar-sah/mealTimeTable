import 'package:flutter/material.dart';
import 'package:mealtimetable/accountPage.dart';
import './myHomePage.dart';
import './settings.dart';

class thursdayMealItem extends StatelessWidget {
  //const thursdayMealItem({Key? key}) : super(key: key);
  static const routeName = "thursdayMealItem";
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Meal Time Table ')),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              height: height / 4,
              width: width,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(254, 83, 3, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'BreakFast',
                    style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.white,
                        fontFamily: "Cursive",
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Poha , Mutter',
                    style: TextStyle(
                        letterSpacing: 1,
                        color: Color.fromARGB(255, 74, 72, 72),
                        fontFamily: "Arial",
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Tea',
                    style: TextStyle(
                        letterSpacing: 1,
                        color: Color.fromARGB(255, 11, 11, 11),
                        fontFamily: "Railway",
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              height: height / 4,
              width: width,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 208, 206, 206),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Lunch',
                    style: TextStyle(
                        letterSpacing: 1,
                        color: Color.fromARGB(255, 239, 11, 11),
                        fontFamily: "Cursive",
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Rice , Dal , Roti ',
                    style: TextStyle(
                        letterSpacing: 1,
                        color: Color.fromARGB(255, 68, 8, 236),
                        fontFamily: "Arial",
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Seasonal Veg',
                    style: TextStyle(
                        letterSpacing: 1,
                        color: Color.fromARGB(255, 104, 10, 228),
                        fontFamily: "Railway",
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Pickle , Salad ',
                    style: TextStyle(
                        letterSpacing: 1,
                        color: Color.fromARGB(255, 11, 11, 11),
                        fontFamily: "Railway",
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              height: height / 4,
              width: width,
              decoration: const BoxDecoration(
                color: Color(0xFF09ED3E),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'CookiesTime',
                    style: TextStyle(
                        letterSpacing: 1,
                        color: Color.fromRGBO(234, 234, 5, 1),
                        fontFamily: "Cursive",
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Brown Bread',
                    style: TextStyle(
                        letterSpacing: 1,
                        color: Color.fromARGB(255, 22, 22, 22),
                        fontFamily: "Arial",
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Tea',
                    style: TextStyle(
                        letterSpacing: 1,
                        color: Color.fromARGB(255, 11, 11, 11),
                        fontFamily: "Railway",
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              height: height / 4,
              width: width,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 144, 220, 246),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Dinner',
                    style: TextStyle(
                        letterSpacing: 1,
                        color: Color.fromRGBO(49, 7, 236, 1),
                        fontFamily: "Cursive",
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Puri , Allu Cholle ',
                    style: TextStyle(
                        letterSpacing: 1,
                        color: Color.fromARGB(255, 74, 72, 72),
                        fontFamily: "Arial",
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Rice , Dal ',
                    style: TextStyle(
                        letterSpacing: 1,
                        color: Color.fromARGB(255, 11, 11, 11),
                        fontFamily: "Railway",
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Pickle , Salad ',
                    style: TextStyle(
                        letterSpacing: 1,
                        color: Color.fromARGB(255, 11, 11, 11),
                        fontFamily: "Railway",
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
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
